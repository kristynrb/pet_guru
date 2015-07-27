# == Schema Information
#
# Table name: cares
#
#  id                  :integer          not null, primary key
#  food_amount_dry     :integer
#  food_frequency_dry  :integer
#  food_amount_wet     :integer
#  food_frequency_wet  :integer
#  treats              :string
#  walk_frequency      :integer
#  walk_length         :integer
#  walks_leash         :string
#  command_name        :string
#  command_description :string
#  grooming            :string
#  special_needs       :string
#  fears               :string
#  additional_details  :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  pet_id              :integer
#

require 'test_helper'

class CareTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
