class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :toy
      t.string :park
      t.string :games
      t.string :habits
      t.string :additional_details

      t.timestamps null: false
    end
  end
end
