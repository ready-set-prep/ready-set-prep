class InterviewreviewController < ApplicationController
  def create
    r = Interviewreview.new(
    company: params[:interview][:company],
    experience: params[:interview][:experience],
    length: params[:interview][:length],
    difficulty: params[:interview][:difficulty]
    )
    if r.save!
      redirect_to interview_index_path
    end
  end
end
