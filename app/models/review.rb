class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_one :tour, :through => :booking
  validates :content, presence: true
end
