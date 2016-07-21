class SearchResult
  attr_reader :price, :clothing_title, :image, :url, :res, :asin
  def initialize(result)
    @url = result["DetailPageURL"]
    @clothing_title = result["ItemAttributes"]["Title"]
    if result["ItemAttributes"]['ListPrice']
      @price = result["ItemAttributes"]['ListPrice']["FormattedPrice"]
    end
    binding.pry
    @image = Array(result["ImageSets"]["ImageSet"]).first["LargeImage"]["URL"] || result["LargeImage"]["URL"] || result["ImageSets"]["ImageSet"].first[1]["URL"]
    @asin = result["ASIN"]
  end
end
