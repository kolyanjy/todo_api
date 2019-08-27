class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      @scope.where(user: @user)
    end
  end
  
  def belongs_to_user?
    @record.user_id == @user.id
  end

end
