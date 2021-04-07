class User < ApplicationRecord
  after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tours
  has_many :carts
  has_many :bookings, through: :carts

  # before_save { self.email = email.downcase }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  # validates :password, presence: true, length: { minimum: 6 }
  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
