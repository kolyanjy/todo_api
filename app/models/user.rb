class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }, format: /@/
  validates :email, :password, :password_confirmation, presence: true
end
