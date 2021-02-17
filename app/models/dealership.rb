# frozen_string_literal: true

# Dealership stores inventories of cars, thus a dealership has a lot of inventories
class Dealership < ApplicationRecord
  has_many :inventories
  belongs_to :user

  def to_s
    name
  end
end
