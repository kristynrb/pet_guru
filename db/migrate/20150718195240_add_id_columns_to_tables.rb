class AddIdColumnsToTables < ActiveRecord::Migration
  def change
    add_column :pets, :user_id, :integer
    add_column :cares, :pet_id, :integer
    add_column :plays, :pet_id, :integer
    add_column :medicals, :pet_id, :integer
  end
end
