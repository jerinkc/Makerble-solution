class UserPolicy < ApplicationPolicy
  def edit?
    user.doctor?
  end

  def update?
    user.doctor?
  end
end
