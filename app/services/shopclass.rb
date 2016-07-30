class Shopclass

  def search
    @shop = HTTParty.get "http://api.shopstyle.com/api/v2/products?pid=#{ENV['API_KEY']}&fts=mens+clothes&offset=0&limit=30"
    @shop["products"].map { |json| Query.new(json) }
  end
end
