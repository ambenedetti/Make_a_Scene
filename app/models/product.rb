class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :images, dependent: :destroy
  has_many :users, through: :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :daily_cost, presence: true
  validates :location, presence: true

end
