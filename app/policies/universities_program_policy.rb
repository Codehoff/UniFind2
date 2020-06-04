class UniversitiesProgramPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  private

  def skip_pundit?
    true
  end
end
