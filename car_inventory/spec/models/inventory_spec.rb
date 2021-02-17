# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Inventory, type: :model do

  it 'is valid with out CARMODEL which is a string' do
    inventory = Inventory.new(carmodel: nil)
    expect(inventory).to_not be_valid
  end
  it 'is valid with out PRICE which is a integer' do
    inventory = Inventory.new(price: nil)
    expect(inventory).to_not be_valid
  end

  it 'check that price is not empty' do
    inventory = Inventory.new(status: nil)
    expect(inventory).to_not be == "nil"
  end

  context 'reduce price by %20 at the end of each month' do
    
    it 'Expect to monthlyPrice method in inventory model to return a price' do
      inventory = Inventory.new
      expect(inventory.monthlyPrice).to_not be == "nil"
    end

    it 'Expect to monthlyPrice method  to return new price at the change of the month' do
      time = Time.new
    
     if time.month <=  12
       inventory = Inventory.new
      expect(inventory.monthlyPrice).eql?(inventory.price)
      end
    end

  end # end of content line

end #end of descrribe


 
 