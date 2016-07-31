class Search
  attr_reader :url, :note, :link, :id, :image
  def initialize(result)
    @url = result["url"]
    @note = result["note"]
    @link = result["link"]
    @id = result["id"]
    @image = result["image"].first[1]["url"]
  end
end
