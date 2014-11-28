class WalmartAffiliate < BaseAffiliate
  def url
    url = Addressable::URI.parse(clean_url)
    link_synergy_sample + url.to_s
  end

  private

  def link_synergy_sample
    [
    "http://linksynergy.walmart.com/fs-bin/click?id=jfOcdvfTNg4&subid=&offerid=223073.1&type=10&tmpid=1082&RD_PARM1=",
    "http://linksynergy.walmart.com/fs-bin/click?id=pD2meGzhH4Y&subid=0&offerid=223073.1&type=10&tmpid=1082&RD_PARM1="
    ].sample
  end
end
