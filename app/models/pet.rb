# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  name       :string
#  breed      :string
#  color      :string
#  birthday   :string
#  would_say  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Pet < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id

  has_many :cares
  has_many :medicals
  has_many :plays
  validates :name, length: { minimum: 2 }

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },url: ":s3_domain_url",
    path: "users/:id/avatar/:style_:basename.:extension"

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
