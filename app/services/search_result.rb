class SearchResult
  attr_reader :price, :clothing_title, :image, :url, :res, :asin
  def initialize(result)
    @url = result.get('DetailPageURL')
    item_attributes = result.get_element('ItemAttributes')
    @clothing_title = item_attributes.get_unescaped('Title')
    if item_attributes.get_hash('ListPrice')
      @price = item_attributes.get_hash('ListPrice')["FormattedPrice"]
    end
    @image = result.get_hash('LargeImage')["URL"]
    @asin = result.get("ASIN")
  end
end
