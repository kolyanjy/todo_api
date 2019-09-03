class Project < ApplicationRecord
  belongs_to :user

  has_many :tasks, -> { order(position: :asc) }, dependent: :destroy

  validates :name, presence: true, length: { in: 5..50 }
end
