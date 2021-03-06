# frozen_string_literal: true

# Dealership is where inventory of cars  would be available to users
class DealershipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dealership, only: %i[show edit update destroy]

  # GET /dealerships or /dealerships.json
  def index
    @dealerships = current_user.dealerships
  end

  # GET /dealerships/1 or  /dealerships/1.json
  def show
    @inventory = @dealership.inventories.build
  end

  # GET /dealerships/new
  def new
    @dealership = current_user.dealerships.build
  end

  # GET /dealerships/1/edit
  def edit; end

  # POST /dealerships or /dealerships.json
  def create
    @dealership = current_user.dealerships.build(dealership_params)

    respond_to do |format|
      if @dealership.save
        format.html { redirect_to @dealership, notice: 'Dealership was successfully created.' }
        format.json { render :show, status: :created, location: @dealership }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealerships/1 or /dealerships/1.json
  def update
    respond_to do |format|
      if @dealership.update(dealership_params)
        format.html { redirect_to @dealership, notice: 'Dealership was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealership }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dealership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealerships/1 or /dealerships/1.json
  def destroy
    @dealership.destroy
    respond_to do |format|
      format.html { redirect_to dealerships_url, notice: 'Dealership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dealership
    @dealership = current_user.dealerships.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dealership_params
    params.require(:dealership).permit(:name, :address)
  end
end
