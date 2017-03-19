class Picture < ApplicationRecord
  belongs_to :user
  # has_many :galleries, through: :linkings
  belongs_to :gallery


  mount_uploader :url, UrlUploader

end
