class Image < ApplicationRecord
  belongs_to :product
  validates :data, presence: true
end
