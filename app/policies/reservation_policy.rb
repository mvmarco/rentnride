class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    (user == record.user) || (user == record.car.user)
  end

  def create?
    user != record.car.user
  end

end