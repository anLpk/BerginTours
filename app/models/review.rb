class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_one :tour, :through => :booking
  validates :content, length: { minimum: 20 }, presence: true
end
