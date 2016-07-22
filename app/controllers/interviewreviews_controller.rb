class InterviewreviewsController < ApplicationController
  def create
    r = Interviewreview.new(
    company: params[:interview][:company],
    experience: params[:interview][:experience],
    length: params[:interview][:length],
    difficulty: params[:interview][:difficulty]
    )
    r.save!
  end
end
