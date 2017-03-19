class User < ApplicationRecord
  has_many :pictures
  has_many :galleries

  has_secure_password

  validates :username, :email, presence: true
  validates :username, uniqueness: true
end
