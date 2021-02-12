json.extract! dealership_inventory, :id, :carmodel, :price, :status, :dealership_id, :created_at, :updated_at
json.url dealership_inventory_url(dealership_inventory, format: :json)
