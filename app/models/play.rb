# == Schema Information
#
# Table name: plays
#
#  id                 :integer          not null, primary key
#  toy                :string
#  park               :string
#  games              :string
#  habits             :string
#  additional_details :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  pet_id             :integer
#

class Play < ActiveRecord::Base
  belongs_to :pet, foreign_key: :pet_id
end
