class AmazonAffiliate < BaseAffiliate
  def url
    url = Addressable::URI.parse(clean_url)
    url.query = { tag: sample_tag }.to_query
    url.to_s
  end

  private

  def sample_tag
    "bpooslego-20"
  end
end
