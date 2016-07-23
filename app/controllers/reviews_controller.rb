class ReviewsController < ApplicationController
  def create
    r = Review.new(
      company: params[:reviews][:company],
      headline: params[:reviews][:headline],
      pros: params[:reviews][:pros],
      cons: params[:reviews][:cons]
      )
      r.save!
  end

  def destroy
    if Review.where(id: params[:id])
      r = Review.where(id: params[:id])
      r.first.destroy
    end
  end


  def edit
    Review.where(id: params[:id])
  end

  def update
    if Review.where(id: params[:id])
      r = Review.where(id: params[:id])
      r.update(
        headline: params[:edit][:headline],
        pros: params[:edit][:pros],
        cons: params[:edit][:cons]
      )
      #this will need to redirect back to the interview page. Right now it goes no where. Refresh.
    end
  end

end
