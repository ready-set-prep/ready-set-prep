class LandingpageController < ApplicationController
  def index
    if current_user
      @reviews = current_user.company_saveds.last(5)
    end
  end
end
