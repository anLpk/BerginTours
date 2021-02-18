class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_one :review, dependent: :destroy
  validates :start_date, presence: true
end
