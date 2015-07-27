# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  pet_id          :integer
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :pets
  has_many :cares, through: :pets
  has_many :medicals, through: :pets
  has_many :plays, through: :pets

  validates :email, presence: true, uniqueness: true

  validates :password, length: { minimum: 8 }, allow_nil: true
  validates :password_digest, presence: true
end
