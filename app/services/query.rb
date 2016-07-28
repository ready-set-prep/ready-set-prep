class Query
attr_reader :price, :currency, :description, :picture, :site
  def initialize(result)
    @price = result["price"] #price
    @currency = result["currency"] #currency
    @description = result["description"] #description
    @picture = result["image"]["sizes"]["Best"]["url"] #image
    @site = result["pageUrl"] #page
  end
end
