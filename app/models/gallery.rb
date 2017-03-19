class Gallery < ApplicationRecord
  has_many :pictures, through: :linkings

end
