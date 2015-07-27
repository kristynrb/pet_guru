# == Schema Information
#
# Table name: medicals
#
#  id                  :integer          not null, primary key
#  weight              :integer
#  height              :integer
#  gender              :string
#  microchip_id        :string
#  pshots_date         :string
#  pshots_name         :string
#  ushots_date         :string
#  ushots_name         :string
#  allergies           :string
#  r_vet_name          :string
#  r_vet_doctor        :string
#  r_vet_address       :string
#  r_vet_address_city  :string
#  r_vet_address_state :string
#  r_vet_zip           :string
#  r_vet_phone         :string
#  e_contact_name      :string
#  e_contact_phone     :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  pet_id              :integer
#

class Medical < ActiveRecord::Base
  belongs_to :pet, foreign_key: :pet_id
end
