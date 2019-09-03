class User < ApplicationRecord
  has_secure_password

  has_many :projects, dependent: :destroy

  validates :email, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP, presence: true, length: { in: 5..50 }
  validates :password, presence: true, length: { in: 5..50 }
end
