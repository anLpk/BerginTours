class Cart < ApplicationRecord
  belongs_to :user
  has_many :bookings

  enum state: ["open", "confirmed", "paid"]
end
