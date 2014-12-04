class TargetAffiliate < BaseAffiliate
  def url
    url = Addressable::URI.parse(clean_url)
    target_affiliate_link + url.to_s
  end

  def target_affiliate_link
    "http://goto.target.com/c/126393/81938/2092?u="
  end
end
