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

  # Assuming we start on month 1 january,
  #  Price reduce by 2% every month

  def monthlyPrice
    #  Price reduce by 2% every month
    time = Time.now
    if time.month <= 12 && !price.nil?
      (1..time.month).each do |_i|
        self.price = price - (price * 0.02)
        return price
      end
    else
      price # inventory.price
    end
  end
end
