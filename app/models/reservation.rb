class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true


  def self.status
    ['Approved', 'Pending', 'Declined']
  end
end
