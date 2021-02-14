# frozen_string_literal: true
require 'active_support/core_ext' 


class Inventory < ApplicationRecord
  belongs_to :dealership

  validates :status, inclusion: { in: %w[old new] }

  STATUS_OPTIONS = [
    ['Car Status', 'car-status'],
    %w[New new],
    %w[Old old]
  ]

  def end_of_month_price
      time = Time.new
      inventory = Inventory.new
      # days of the month end on the 31 or 30 or 29
      if time.day  != 31 || time.day  != 30 ||time.day  != 29
         inventory.price   
     else
        inventory.price = inventory.price * 0.02
    end 
   end
    
end
