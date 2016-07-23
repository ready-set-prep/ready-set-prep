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

  def destroy
    if Interviewreview.where(id: params[:id])
      r = Interviewreview.where(id: params[:id])
      r.first.destroy
    end
  end


  def edit
    Interviewreview.where(id: params[:id])
  end

  def update
    if Interviewreview.where(id: params[:id])
      r = Interviewreview.where(id: params[:id])
      r.update(
        experience: params[:edit][:experience],
        length: params[:edit][:length],
        difficulty: params[:edit][:difficulty]
      )
      #this will need to redirect back to the interview page. Right now it goes no where. Refresh.
    end
  end
end
