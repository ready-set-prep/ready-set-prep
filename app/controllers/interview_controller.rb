class InterviewController < ApplicationController

  def create
    if params[:q] && params[:positions] != ""
      @params = params[:q].strip.gsub(/\s/,'+') #company #glassdoor
      @amazonparams = params[:positions].strip.gsub(/\s/,'+') #position #amazon
      glassdoor_api_call
      glassdoor_data
      @items = Amazonclass.new(@amazonparams).search
      @pins = Pintrestclass.new.search
      @category = PositionCategory.where(position: params[:positions]).category
    elsif params[:positions] == ""
      @amazonparams = params[:positions].strip.gsub(/\s/,'+') #position #amazon
      @pins = Pintrestclass.new.search
      @category = PositionCategory.where(position: params[:positions]).category
      glassdoor_api_call
      glassdoor_data
    else
      @items = Amazonclass.new(@amazonparams).search
      @pins = Pintrestclass.new.search
      @category = PositionCategory.where(position: params[:positions]).first.category #this will work once the params[:posiitons] is changed to a string and not to a int.
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
