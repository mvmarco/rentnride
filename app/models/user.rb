class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy
  has_many :cars, dependent: :destroy
  validates :name, :phone_number, presence: true
  validates :name, :phone_number, uniqueness: true

end