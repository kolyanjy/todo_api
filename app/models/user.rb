class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, format: /@/
  validates :email, :password, presence: true, length: { in: 5..50 }
end
