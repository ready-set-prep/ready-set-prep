class ReviewsController < ApplicationController
  def create
    r = Review.new(
      user_id: current_user.id,
      company: params[:company],
      headline: params[:headline],
      pros: params[:pros],
      cons: params[:cons],
      position: params[:position],
      dress_code: params[:dress_code],
      size: params[:size]
      )
      binding.pry
      authorize r
      r.save!
  end

  def destroy
    if Review.where(id: params[:id])
      r = Review.where(id: params[:id])
      authorize r
      r.first.destroy
    end
  end


  def edit
    Review.where(id: params[:id])
  end

  def update
    if Review.where(id: params[:id])
      r = Review.where(id: params[:id])
      authorize r
      r.update(
        headline: params[:edit][:headline],
        pros: params[:edit][:pros],
        cons: params[:edit][:cons]
      )
      #this will need to redirect back to the interview page. Right now it goes no where. Refresh.
    end
  end

end
