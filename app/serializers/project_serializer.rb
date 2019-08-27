class ProjectSerializer < ApplicationSerializer
  set_type :projects
  attributes :name

  belongs_to :user, record_type: :users
end
