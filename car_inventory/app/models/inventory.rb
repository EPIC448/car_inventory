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

   
 
  def monthlyPrice
    
    #  Price reduce by 2% every month
    time = Time.now
    if time.month <= 12
        for i in 1..time.month
          self.price = self.price - (self.price * 0.02)
          return self.price
        end
    else
      return  self.price #inventory.price
    end
 end


end
