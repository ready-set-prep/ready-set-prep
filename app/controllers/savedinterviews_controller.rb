class SavedinterviewsController < ApplicationController
  def index
    @companies = CompanySaved.where(user_id: current_user.id)

  end
  def create
    @info = CompanySaved.new(
      user_id: current_user.id,
      company: params[:company],
      position: params[:position]
      )
    flash[:success] = "Saved!"
    # authorize r
    @info.save!
  end

  def destroy
    if CompanySaved.where(id: params[:id])
      r = CompanySaved.where(id: params[:id])
      # authorize r
      r.first.destroy
    end
    flash[:success] = "Deleted!"
    redirect_to savedinterviews_path
  end
end
