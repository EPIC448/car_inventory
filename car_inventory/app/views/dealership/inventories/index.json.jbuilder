# frozen_string_literal: true

json.array! @dealership_inventories, partial: 'dealership_inventories/dealership_inventory', as: :dealership_inventory
