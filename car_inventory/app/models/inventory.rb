class Inventory < ApplicationRecord
  belongs_to :dealership

  validates :status, inclusion: {in:['old', 'new']}

  STATUS_OPTIONS = [
    ['Car Status', 'car-status'],
    ['New', 'new'],
    ['Old', 'old'],
  ]
end
