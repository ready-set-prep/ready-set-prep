class InterviewreviewsController < ApplicationController
  def create

    r = Interviewreview.new(
    user_id: current_user.id,
    company: params[:interview][:company],
    experience: params[:interview][:experience],
    length: params[:interview][:length],
    difficulty: params[:interview][:difficulty]
    )
    authorize r
    r.save!
  end

  def destroy
    if Interviewreview.where(id: params[:id])
      r = Interviewreview.where(id: params[:id])
      authorize r
      r.first.destroy
    end
  end


  def edit
     r = Interviewreview.where(id: params[:id])
     authorize r
  end

  def update
    if Interviewreview.where(id: params[:id])
      r = Interviewreview.where(id: params[:id])
      authorize r
      r.update(
        experience: params[:edit][:experience],
        length: params[:edit][:length],
        difficulty: params[:edit][:difficulty]
      )
      #this will need to redirect back to the interview page. Right now it goes no where. Refresh.
    end
  end
end
