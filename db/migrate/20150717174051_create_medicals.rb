class CreateMedicals < ActiveRecord::Migration
  def change
    create_table :medicals do |t|
      t.integer :weight
      t.integer :height
      t.string :gender
      t.string :microchip_id
      t.string :pshots_date
      t.string :pshots_name
      t.string :ushots_date
      t.string :ushots_name
      t.string :allergies
      t.string :r_vet_name
      t.string :r_vet_doctor
      t.string :r_vet_address
      t.string :r_vet_address_city
      t.string :r_vet_address_state
      t.string :r_vet_zip
      t.string :r_vet_phone
      t.string :e_contact_name
      t.string :e_contact_phone

      t.timestamps null: false
    end
  end
end
