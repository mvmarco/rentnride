class Car < ApplicationRecord
  belongs_to :user
  validates :model, presence: true
  validates :pickup_address, presence: true
  validates :price, presence: true
  validates :description, presence: true

  has_many :reservations, dependent: :destroy
end
