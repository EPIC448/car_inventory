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

  def price
    #  Price reduce by 2% every month
    self.price  
  end

end
