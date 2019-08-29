class TaskPolicy < ApplicationPolicy
  private

  def belongs_to_parent?
    @record.project.user_id == @user.id
  end
end
