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
  it 'is valid with out STATUS which is a string' do
    inventory = Inventory.new(status: nil)
    expect(inventory).to_not be_valid
  end

#  Write the Rspec for it first
#   Price reduce by 2% every month. start at 100
# month1 price = 100 -2% = 98
# month2 price     = 98 - 2% = 96.04
# month3 price     = 96.04 - 2% = 94.472
#  (inventory price - inventory price) ^ time


end
