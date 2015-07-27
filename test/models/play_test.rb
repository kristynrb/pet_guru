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

require 'test_helper'

class PlayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
