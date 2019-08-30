class Comment < ApplicationRecord
  belongs_to :task

  validates :name, presence: true, length: { in: 5..50 }
end
