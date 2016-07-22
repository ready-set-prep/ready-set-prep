class ReviewsController < ApplicationController
  def create
    r = Review.new(
      company: params[:reviews][:company],
      headline: params[:reviews][:headline],
      pros: params[:reviews][:pros],
      cons: params[:reviews][:cons]
      )
      r.save!
      binding.pry
  end
end
