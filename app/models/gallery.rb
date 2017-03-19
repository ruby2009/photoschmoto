class Gallery < ApplicationRecord
  belongs_to :user
  has_many :pictures, through: :linkings

end
