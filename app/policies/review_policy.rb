class ReviewPolicy < ApplicationPolicy
  attr_reader :user, :review

  def initialize(user, review)
    @user = user
    @review = review
  end

  def create?
    user
  end

  def destroy?
    true
    # user == @review.first.user
  end

  def edit?
    destroy?
  end

  def update?
    destroy?
  end
end
