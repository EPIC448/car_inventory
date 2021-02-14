# frozen_string_literal: true

# Inventory of all the cars that has being created
class InventoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dealership
  before_action :set_inventory, only: %i[show edit update destroy]

  # GET dealerships/1/inventories
  def index
    @inventories = @dealership.inventories
  end

  # GET dealerships/1/inventories/1
  def show; end

  # GET dealerships/1/inventories/new
  def new
    @inventory = @dealership.inventories.build
  end

  # GET dealerships/1/inventories/1/edit
  def edit; end

  # POST dealerships/1/inventories
  def create
    @inventory = @dealership.inventories.build(inventory_params)

    if @inventory.save
      redirect_to(@inventory.dealership, notice: 'Inventory was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT dealerships/1/inventories/1
  def update
    if @inventory.update_attributes(inventory_params)
      redirect_to(@inventory.dealership(notice: 'Inventory was successfully updated.'))
    else
      render action: 'edit'
    end
  end

  # DELETE dealerships/1/inventories/1
  def destroy
    @inventory.destroy

    redirect_to @dealership
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dealership
    @dealership = current_user.dealerships.find(params[:dealership_id])
  end

  def set_inventory
    @inventory = @dealership.inventories.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def inventory_params
    params.require(:inventory).permit(:carmodel, :price, :status, :dealership_id)
  end
end
