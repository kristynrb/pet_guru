class CreateCares < ActiveRecord::Migration
  def change
    create_table :cares do |t|
      t.integer :food_amount_dry
      t.integer :food_frequency_dry
      t.integer :food_amount_wet
      t.integer :food_frequency_wet
      t.string :treats
      t.integer :walk_frequency
      t.integer :walk_length
      t.string :walks_leash
      t.string :command_name
      t.string :command_description
      t.string :grooming
      t.string :special_needs
      t.string :fears
      t.string :additional_details

      t.timestamps null: false
    end
  end
end
