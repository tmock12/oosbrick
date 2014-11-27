class AmazonAffiliate < BaseAffiliate
  def url
    url = Addressable::URI.parse(clean_url)
    url.query = { tag: sample_tag }.to_query
    url.to_s
  end

  private

  def sample_tag
    %w[ooslego02-20 bpooslego-20].sample
  end
end
