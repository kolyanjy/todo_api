class Comment < ApplicationRecord
  belongs_to :task

  include ImageUploader::Attachment.new(:image)

  validates :name, presence: true, length: { in: 5..50 }
end
