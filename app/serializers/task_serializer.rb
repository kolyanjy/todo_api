class TaskSerializer < ApplicationSerializer
  set_type :tasks
  attributes :name, :deadline, :complete, :position

  belongs_to :project, record_type: :projects
end
