class Task < ApplicationRecord
  belongs_to :project

  has_many :comments

  acts_as_list scope: :project

  validates :name, presence: true, length: { in: 5..50 }
end
