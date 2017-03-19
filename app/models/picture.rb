class Picture < ApplicationRecord
  belongs_to :user
  has_many :galleries, through: :linkings
end
