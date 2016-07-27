class ReviewPolicy < ApplicationPolicy
  attr_reader :user, :review

  def initialize(user, review)
    @user = user
    @review = review
  end

  def create?
    true
  end

  def destroy?
    user == Array(review).first.user
  end

  def edit?
    destroy?
  end

  def update?
    destroy?
  end
end
