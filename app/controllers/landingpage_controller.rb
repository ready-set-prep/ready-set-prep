class LandingpageController < ApplicationController
  def index
    if current_user
      @reviews = current_user.company_saveds[0..4]
    end
  end
end
