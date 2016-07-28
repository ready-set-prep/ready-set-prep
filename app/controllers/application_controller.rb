class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Pundit

  # rescue_from NoMethodError do
  #   redirect_to :back
  # end
end
