class Booking < ApplicationRecord
  belongs_to :cart
  has_one :user, through: :cart
  belongs_to :tour
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
end
