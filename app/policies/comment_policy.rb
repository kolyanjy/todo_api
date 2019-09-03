class CommentPolicy < ApplicationPolicy
  def belongs_to_parent?
    @record.task.project.user == @user
  end
end
