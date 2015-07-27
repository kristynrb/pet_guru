class AddColumnsToMedicalTable < ActiveRecord::Migration
  def change
    add_column :medicals, :e_vet_name, :string
    add_column :medicals, :e_vet_address, :string
    add_column :medicals, :e_vet_address_city, :string
    add_column :medicals, :e_vet_address_state, :string
    add_column :medicals, :e_vet_address_zip, :string
    add_column :medicals, :e_vet_phone, :string
  end
end
