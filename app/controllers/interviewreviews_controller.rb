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
    flash[:success] = "Added!"
    redirect_to landingpage_index_path
  end

  def destroy
    if Interviewreview.where(id: params[:id])
      r = Interviewreview.where(id: params[:id])
      authorize r
      r.first.destroy
      flash[:success] = "Deleted!"
      redirect_to landingpage_index_path
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
      flash[:success] = "Edited!"
      redirect_to landingpage_index_path
    end
  end
end
