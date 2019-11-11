class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, dependent: :destroy
  has_many :products, through: :bookings
  has_many :bookings
  has_many :bookings, through: :products
  validates :first_name, presence: true
  validates :last_name, presence: true

end
