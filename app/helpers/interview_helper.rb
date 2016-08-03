module InterviewHelper
  def show_stars(review)
    unless review == nil
    image_tag "#{review}star.png"
    end
  end
end
