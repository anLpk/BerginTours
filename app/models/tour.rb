class Tour < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, :through => :bookings, dependent: :destroy

  has_one_attached :photo
end
