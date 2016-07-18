require 'amazon/ecs'
Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = ENV['More_amazon_Access_Key_ID']
  options[:AWS_secret_key] = ENV['More_amazon_Secret_Access_Key']
  options[:associate_tag] = 'pratt0923-20'
end

class InterviewController < ApplicationController
  def index
    amazon_API_call
    @res.items.each do |item|
    @URL = item.get('DetailPageURL')
    item_attributes = item.get_element('ItemAttributes')
    @name = item_attributes.get_unescaped('Title')
    @price = item_attributes.get_hash('ListPrice')["FormattedPrice"]
    @image = item.get_hash('LargeImage')["URL"]
    end
  end


  private
  def amazon_API_call #need to add in the params once we get that down but for now the call is made!!!
    @res = Amazon::Ecs.item_search('ruby', {:response_group => 'Images, ItemAttributes, Offers', :sort => 'salesrank', :search_index => 'Apparel'})
    @res.is_valid_request?
    @res.has_error?
    @res.error
    @res.total_pages
    @res.total_results
    @res.item_page
  end
end
