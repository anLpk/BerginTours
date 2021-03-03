class Tour < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, :through => :bookings, dependent: :destroy
  
  acts_as_taggable_on :tags

  has_one_attached :photo
end
