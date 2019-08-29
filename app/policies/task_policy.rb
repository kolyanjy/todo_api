class TaskPolicy < ApplicationPolicy
  def position_up?
    belongs_to_parent?
  end

  def position_down?
    belongs_to_parent?
  end
  private

  def belongs_to_parent?
    @record.project.user_id == @user.id
  end
end
