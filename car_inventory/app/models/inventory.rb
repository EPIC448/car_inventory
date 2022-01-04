# frozen_string_literal: true

require 'active_support/core_ext'

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

  def monthly_price
    #  Price reduce by 2% every month start with the First Day of the Year. Jan 1st
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
