class InterviewreviewPolicy < ApplicationPolicy
  attr_reader :user, :interviewreview

  def initialize(user, interviewreview)
    @user = user
    @interviewreview = interviewreview.first
  end

  def create?
    user
  end

  def destroy?
    user == @interviewreview.user
  end

  def edit?
    destroy?
  end

  def update?
    destroy?
  end
end
