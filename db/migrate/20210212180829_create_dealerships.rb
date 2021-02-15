# frozen_string_literal: true

# Generate active record for dealership
class CreateDealerships < ActiveRecord::Migration[6.1]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
