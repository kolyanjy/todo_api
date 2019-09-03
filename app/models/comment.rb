class Comment < ApplicationRecord
  belongs_to :task, counter_cache: true

  include ImageUploader::Attachment.new(:image)

  validates :name, presence: true, length: { in: 5..50 }
end
