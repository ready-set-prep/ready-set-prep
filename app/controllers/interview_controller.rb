class InterviewController < ApplicationController

  def create
    if params[:q][:q] && params[:q][:position] != ""
      @params = params[:q][:q].strip.gsub(/\s/,'+') #company #glassdoor
      @amazonparams = params[:q][:position].strip.gsub(/\s/,'+') #position #amazon
      glassdoor_api_call
      glassdoor_data
      @items = Amazonclass.new(@amazonparams).search
    elsif params[:q][:q] == ""
      @amazonparams = params[:q][:position].strip.gsub(/\s/,'+') #position #amazon
      glassdoor_api_call
      glassdoor_data
    else
      @items = Amazonclass.new(@amazonparams).search
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
    @total_rating = @data["response"]["employers"].first["overallRating"].to_f.round
    @balance_rating = @data["response"]["employers"].first["workLifeBalanceRating"].to_f.round
    @benefits_rating = @data["response"]["employers"].first["compensationAndBenefitsRating"].to_f.round
    @review = @data["response"]["employers"].first["featuredReview"]
    @sector = @data["response"]["employers"].first["sectorName"]
  end
end
