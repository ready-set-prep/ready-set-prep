class ReviewsController < ApplicationController
  def create
    r = Review.new(
      company: params[:reviews][:company],
      headline: params[:reviews][:headline],
      pros: params[:reviews][:pros],
      cons: params[:reviews][:cons]
      )
      if r.save!
        redirect_to interview_index_path
      end
  end
end
