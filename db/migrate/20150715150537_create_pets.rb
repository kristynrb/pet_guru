class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.string :birthday
      t.string :would_say

      t.timestamps null: false
    end
  end
end
