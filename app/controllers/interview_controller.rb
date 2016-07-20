

class InterviewController < ApplicationController
  def create
    @params = params[:q][:q].strip.gsub(/\s/,'+') #company #glassdoor
    @amazonparams = params[:q][:position].strip.gsub(/\s/,'+') #position #amazon

    if @params && @amazonparams
      glassdoor_api_call
      glassdoor_data
      @items = Amazonclass.new(@amazonparams).search
    elsif @params
      glassdoor_api_call
      glassdoor_data
    elsif @amazonparams
      @items = Amazonclass.new(@amazonparams).search
    else
      redirect_to landingpage_index_path
    end
  end


  private
  def glassdoor_api_call
    @data = HTTParty.get "http://api.glassdoor.com/api/api.htm?v=1&format=json&t.p=#{ENV['PARTNER_ID']}&t.k=#{ENV['GLASSDOOR_KEY']}&action=employers&q=#{@params}
    &userip=192.168.43.42
    &useragent=Chrome/%2F4.0"
  end

  def glassdoor_data
    @name = @data["response"]["employers"].first["name"]
    @industry = @data["response"]["employers"].first["industry"]
    @total_rating = @data["response"]["employers"].first["overallRating"]
    @balance_rating = @data["response"]["employers"].first["workLifeBalanceRating"]
    @benefits_rating = @data["response"]["employers"].first["compensationAndBenefitsRating"]
    @review = @data["response"]["employers"].first["featuredReview"]
    @sector = @data["response"]["employers"].first["sectorName"]
  end
end
