# frozen_string_literal: true

json.extract! dealership, :id, :name, :address, :user_id, :created_at, :updated_at
json.url dealership_url(dealership, format: :json)
