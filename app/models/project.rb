class Project < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { in: 5..50 }
end
