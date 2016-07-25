class Pintrestclass

  def initialize
  end

  def search
    @pintrest = HTTParty.get "https://api.pinterest.com/v1/boards/readysetprep/womens-interview-ideas/pins?access_token=#{ENV['ACCESS_TOKEN']}&fields=image"
    @pintrest["data"].map { |json| Search.new(json) }
  end
end
