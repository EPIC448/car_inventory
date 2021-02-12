class Dealership < ApplicationRecord
  has_many :inventories
  belongs_to :user
end
