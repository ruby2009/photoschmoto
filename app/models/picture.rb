class Picture < ApplicationRecord
  belongs_to :user
  has_many :galleries, through: :linkings

  mount_uploader :image_url, ImageUrlUploader

end
