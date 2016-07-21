class SearchResult
  attr_reader :price, :clothing_title, :image, :url, :res, :asin
  def initialize(result)
    @url = result["DetailPageURL"]
    @clothing_title = result["ItemAttributes"]["Title"]
    if result["ItemAttributes"]['ListPrice']
      @price = result["ItemAttributes"]['ListPrice']["FormattedPrice"]
    end
    if result["ImageSets"]
      if result["ImageSets"]["ImageSet"]
        if result["ImageSets"]["ImageSet"].first[1]
          @image = result["ImageSets"]["ImageSet"].first[1]["URL"]
        else
          @image = result["ImageSets"]["ImageSet"].first["LargeImage"]["URL"]
        end
      else
        @image = result["LargeImage"]["URL"]
      end
    end
    @asin = result["ASIN"]
  end
end
