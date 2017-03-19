class User < ApplicationRecord
  has_many :pictures
  has_many :gallaries

  has_secure_password

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
