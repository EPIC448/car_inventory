require 'rails_helper'

RSpec.describe Dealership, type: :model do
  
#  before(:each) do
#   @dealership = Dealership.create(name: "Dealership name", address: "123 street address", user: user.id)
#  end

#   describe "creation of dealership" do
#     it "should have one dealership created after required inforamtion is enter"
#     expect(Dealership.all.count).to eq(1)
       
#   end



  it "is valid with out NAME which is a string" do
    dealership = Dealership.new(name: nil)
    expect(dealership).to_not be_valid
  end

  it "is not valid without a ADDRESS which is a string" do
    dealership = Dealership.new(address: nil)
    expect(dealership).to_not be_valid
  end
  

end


