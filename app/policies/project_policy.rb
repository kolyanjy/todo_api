class ProjectPolicy < ApplicationPolicy
  def belongs_to_user?
    @record.user_id == @user.id
  end

  class Scope < Scope
    def resolve
      @scope.where(user: @user)
    end
  end
end
