class CommentSerializer < ApplicationSerializer
  set_type :comment
  attributes :name, :image_url

  belongs_to :task, record_type: :tasks
end
