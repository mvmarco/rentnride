class Car < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :model, presence: true
  validates :pickup_address, presence: true
  validates :price, presence: true
  validates :description, presence: true

  has_many :reservations, dependent: :destroy

  geocoded_by :pickup_address
  after_validation :geocode, if: :will_save_change_to_pickup_address?

end
