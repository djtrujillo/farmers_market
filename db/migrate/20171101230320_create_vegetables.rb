class CreateVegetables < ActiveRecord::Migration[5.1]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :unit_measurement
      t.integer :days_to_maturity
      t.integer :role

      t.timestamps
    end
  end
end
