# frozen_string_literal: true

require 'active_support/core_ext'

# Inventory of all the cars that has being created
class Inventory < ApplicationRecord
  belongs_to :dealership
  validates :status, inclusion: { in: %w[old new] }

  STATUS_OPTIONS = [
    ['Car Status', 'car-status'],
    %w[New new],
    %w[Old old]
  ].freeze

  # there are 12 months in a year  // Currently stack overfollow
   
#    Inventory.all.each do |inventory|

#   def price
#     #  Price reduce by 2% every month
#    time = Time.new
#    time_of_month = time.month
   
#    for i in 1..time.month
#     break  if i == time.month
#    return  self.price = self.price - (self.price * 0.02)
#    else
#     return    price
#    end
#   end

#   end
#  end

  
end
#  break i if i < time.month