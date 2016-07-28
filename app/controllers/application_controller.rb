class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  include Pundit
require 'shopsense'
  # rescue_from NoMethodError do
  #   redirect_to :back
  # end
end
