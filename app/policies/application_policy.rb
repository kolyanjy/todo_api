class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    belongs_to_parent?
  end

  def show?
    belongs_to_parent?
  end

  def create?
    belongs_to_parent?
  end

  def update?
    belongs_to_parent?
  end

  def destroy?
    belongs_to_parent?
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end
  end
end
