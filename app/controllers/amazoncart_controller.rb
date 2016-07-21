class AmazoncartController < ApplicationController
  attr_reader :number
  def initialize
    @number = number
  end

  def create
    request = Vacuum.new
    request.associate_tag = 'pratt0923-20'
    request.aws_access_key_id = ENV['More_amazon_Access_Key_ID']
    request.aws_secret_access_key = ENV['More_amazon_Secret_Access_Key']
    response = request.cart_create(
      query: {
        'HMAC' => ENV['More_amazon_Secret_Access_Key'],
        'Item.1.OfferListingId' => params["number"]["ASIN"],
        'Item.1.Quantity' => 1
      }
    ).to_h
    binding.pry
  end
end
