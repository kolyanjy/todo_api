class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A\S+@.+\.\S+\z/

  has_secure_password


  validates :email, uniqueness: true, format: VALID_EMAIL_REGEX
  validates :email, :password, presence: true, length: { in: 5..50 }
end
