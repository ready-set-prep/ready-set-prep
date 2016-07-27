class InterviewreviewPolicy < ApplicationPolicy
  attr_reader :user, :interviewreview

  def initialize(user, interviewreview)
    @user = user
    @interviewreview = interviewreview
  end

  def create?
    true
  end

  def destroy?
    user == Array(interviewreview).first.user
  end

  def edit?
    destroy?
  end

  def update?
    destroy?
  end
end
