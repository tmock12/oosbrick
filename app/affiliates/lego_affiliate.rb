class LegoAffiliate < BaseAffiliate
  def url
    url = Addressable::URI.parse(clean_url)
    link_synergy_sample + url.to_s
  end

  def link_synergy_sample
    "http://click.linksynergy.com/fs-bin/click?id=pD2meGzhH4Y&subid=&offerid=115554.1&type=10&tmpid=2294&RD_PARM1="
  end
end
