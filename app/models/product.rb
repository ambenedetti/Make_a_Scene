class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :users, through: :bookings
  validates :title, presence: true
  validates :description, presence: true
  validates :daily_cost, presence: true
  validates :location, presence: true
  validates :category, presence: true, inclusion: { in: %w(costumes vehicles furniture electronics decor books toys kitchenware tools miscellaneous) }
  include PgSearch::Model
  pg_search_scope :search_many,
    against: [:title, :description, :style, :category],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
