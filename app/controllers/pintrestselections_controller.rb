class PintrestselectionsController < ApplicationController
  def index
    if params["name"] == "fashionable"
      #do fashionable pintrest call here
    elsif params["name"] == "casual"
      #do casual pintrest call here
    elsif params["name"] == "business"
      #do business pintrest call here
    elsif params["name"] == "conservative"
      #do conservative pintrest call here.
    else
      #you did not put in valid things
    end
  end
end
