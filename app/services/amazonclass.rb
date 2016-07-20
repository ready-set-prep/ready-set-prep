require 'amazon/ecs'
Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = ENV['More_amazon_Access_Key_ID']
  options[:AWS_secret_key] = ENV['More_amazon_Secret_Access_Key']
  options[:associate_tag] = 'pratt0923-20'
end

class Amazonclass

  def initialize(amazonparams)
    @amazonparams = amazonparams
  end

  def search
    @res = Amazon::Ecs.item_search(@amazonparams, {:response_group => 'Images, ItemAttributes, Offers', :sort => 'salesrank', :search_index => 'Apparel'})
    @res.items.map { |json| SearchResult.new(json) }
  end
end
