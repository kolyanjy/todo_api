class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
  validates :email, :password, presence: true, length: { in: 5..50 }
end
