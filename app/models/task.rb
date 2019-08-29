class Task < ApplicationRecord
  belongs_to :project

  acts_as_list scope: :project

  validates :name, presence: true, length: { in: 5..50 }
end
