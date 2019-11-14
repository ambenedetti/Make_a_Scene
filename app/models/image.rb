class Image < ApplicationRecord
  belongs_to :product
  validates :data, presence: true
  mount_uploader :data, PhotoUploader
end
