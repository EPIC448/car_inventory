require 'rails_helper'

RSpec.describe Dealership, type: :model do


  it "is valid with out NAME which is a string" do
    dealership = Dealership.new(name: nil)
    expect(dealership).to_not be_valid
  end

  it "is not valid without a ADDRESS which is a string" do
    dealership = Dealership.new(address: nil)
    expect(dealership).to_not be_valid
  end
  

end


