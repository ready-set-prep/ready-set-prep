class Amazonclass

  def initialize(amazonparams)
    @amazonparams = amazonparams
  end

  def search
    request = Vacuum.new
    request.associate_tag = 'pratt0923-20'
    request.aws_access_key_id = ENV['More_amazon_Access_Key_ID']
    request.aws_secret_access_key = ENV['More_amazon_Secret_Access_Key']
    @res = response = request.item_search(query: {'Keywords' => @amazonparams,'SearchIndex' => 'Apparel', 'ResponseGroup' => "ItemAttributes,Images"}).to_h
    @res["ItemSearchResponse"]["Items"]["Item"].map { |json| SearchResult.new(json) }

  end
end
