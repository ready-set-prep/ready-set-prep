require 'amazon/ecs'
Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = ENV['More_amazon_Access_Key_ID']
  options[:AWS_secret_key] = ENV['More_amazon_Secret_Access_Key']
  options[:associate_tag] = 'pratt0923-20'
end

class InterviewController < ApplicationController
  def index
    # @params = params[:q].strip.gsub(/\s/,'+')
    # glassdoor_api_call
    # @name = @data["response"]["employers"].first["name"]
    # @industry = @data["response"]["employers"].first["industry"]
    # @total_rating = @data["response"]["employers"].first["overallRating"]
    # @balance_rating = @data["response"]["employers"].first["workLifeBalanceRating"]
    # @benefits_rating = @data["response"]["employers"].first["compensationAndBenefitsRating"]
    # @review = @data["response"]["employers"].first["featuredReview"]

    # amazon_API_call
    # @res.items.each do |item|
    # @URL = item.get('DetailPageURL')
    # item_attributes = item.get_element('ItemAttributes')
    # @name = item_attributes.get_unescaped('Title')
    #   if item_attributes.get_hash('ListPrice')
    #     @price = item_attributes.get_hash('ListPrice')["FormattedPrice"]
    #   end
    #   @image = item.get_hash('LargeImage')["URL"]
    # end
  end


  private
  def amazon_API_call #need to add in the params once we get that down but for now the call is made!!!
    @res = Amazon::Ecs.item_search('ruby', {:response_group => 'Images, ItemAttributes, Offers', :sort => 'reviewrank', :search_index => 'Apparel', :brand => 'Sony'})
    @res.is_valid_request?
    @res.has_error?
    @res.error
    @res.total_pages
    @res.total_results
    @res.item_page
  end


  def glassdoor_api_call
    #It does not like it when I enter in the rest of the lines so its just going to stay like this.
    @data = HTTParty.get "http://api.glassdoor.com/api/api.htm?v=1&format=json&t.p=#{ENV['PARTNER_ID']}&t.k=#{ENV['GLASSDOOR_KEY']}&action=employers&q=#{@params}
    &userip=192.168.43.42
    &useragent=Chrome/%2F4.0"
  end
end
