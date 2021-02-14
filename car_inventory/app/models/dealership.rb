# frozen_string_literal: true

class Dealership < ApplicationRecord
  has_many :inventories
  belongs_to :user

  def end_of_month

    if last_day = ::Time.days_in_month(month, year)
      last_hour(days_since(last_day - day))
      inventories.each do |inventory|
      return inventory.price - inventory.price * 0.02
      end
    end
 end
end 
