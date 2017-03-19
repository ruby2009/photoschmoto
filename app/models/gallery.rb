class Gallery < ApplicationRecord
  belongs_to :user
  has_many :pictures, dependent: :destroy
  # has_many :pictures, through: :linkings
  # has_many :linkings

end
