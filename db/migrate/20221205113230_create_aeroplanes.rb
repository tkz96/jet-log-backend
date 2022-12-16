class CreateAeroplanes < ActiveRecord::Migration[7.0]
  def change
    create_table :aeroplanes do |t|
      t.string :name
      t.integer :make_year
      t.string :country_of_origin
      t.string :fuel_economy
      t.float :long_range_cruise_speed
      t.integer :passenger_capacity
      t.integer :crew
      t.text :description
      t.text :photo

      t.timestamps
    end
  end
end
