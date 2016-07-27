class SavedinterviewsController < ApplicationController
  def index
  end
  def create
    r = CompanySaved.new(
      user_id: current_user.id,
      company: params[:company],
      position_categories: params[:position]
      )
        # authorize r
        r.save!
  end

    def destroy
      if CompanySaved.where(id: params[:id])
        r = CompanySaved.where(id: params[:id])
        # authorize r
        r.first.destroy
      end
    end
end
