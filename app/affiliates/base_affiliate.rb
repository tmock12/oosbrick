class BaseAffiliate

  attr_reader :clean_url

  def initialize(url)
    @clean_url = PostRank::URI.normalize(PostRank::URI.c14n(url))
  end
end
