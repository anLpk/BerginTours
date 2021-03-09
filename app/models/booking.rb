class Booking < ApplicationRecord
  belongs_to :cart
  has_one :user, through: :cart
  belongs_to :tour
  has_one :review, dependent: :destroy
  validates :start_date, presence: true

  def calculate_total_price
    (number_of_adult.to_i * tour.price) + (number_of_children.to_i * 0.5 * tour.price) + (number_of_infant.to_i * 0)
  end
end
