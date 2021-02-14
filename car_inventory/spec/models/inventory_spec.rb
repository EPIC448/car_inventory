require 'rails_helper'

RSpec.describe Inventory, type: :model do

  it "is valid with out CARMODEL which is a string" do
    inventory = Inventory.new(carmodel: nil)
    expect(inventory).to_not be_valid
  end
  it "is valid with out PRICE which is a integer" do
    inventory = Inventory.new(price: nil)
    expect(inventory).to_not be_valid
  end
  it "is valid with out STATUS which is a string" do
    inventory = Inventory.new(status: nil)
    expect(inventory).to_not be_valid
  end

end
