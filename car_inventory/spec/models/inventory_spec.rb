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

  context 'reduce price by %20 at the end of each month' do
    time = Time.new
    inventory = Inventory.new(price: nil)

    (1..time.month).each do |i|
      it "inventory price should be #{time.month} at month #{i} " do
        result = inventory.price - (inventory.price * 0.02)
        expect(result).to eq(inventory.price(-(inventory.price * 0.02)))
      end
    end
  end

  it 'is valid with out STATUS which is a string' do
    inventory = Inventory.new(status: nil)
    expect(inventory).to_not be_valid
  end
end
# def price(price,n)
#   time = Time.new
#   puts time.month
#   #iterate over number of months & perform calulation
#   #for i in 1..n  work like a while loop

#   for i in 1..time.month
#   price = price - (price * 0.02)
#   puts "Month #{i} price $#{price.round(2)}"
# end
# return price

# end

#   price(100,12)
