class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.where(user: @user)
    end
  end

  def belongs_to_parent?
    @record.user_id == @user.id
  end
end
