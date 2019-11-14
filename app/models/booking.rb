class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  enum status: [:pending, :accepted, :rejected, :archived]
end
