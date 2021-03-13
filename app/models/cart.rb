class Cart < ApplicationRecord
  belongs_to :user
  has_many :bookings

  enum state: ["open", "confirmed", "paid"]

  def calculate_total_price
    prices = self.bookings.map do |booking|
      booking.calculate_total_price
    end
    prices.sum
  end
end
