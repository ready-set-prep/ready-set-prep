class SavedinterviewsController < ApplicationController
  def index
    @companies = CompanySaved.where(user_id: current_user.id)

  end
  def create
    @info = CompanySaved.new(
      user_id: current_user.id,
      company: params[:q],
      position: params[:positions]
      )
        # authorize r
        @info.save!
  end

    def destroy
      if CompanySaved.where(id: params[:id])
        r = CompanySaved.where(id: params[:id])
        # authorize r
        r.first.destroy
      end
    end
end
