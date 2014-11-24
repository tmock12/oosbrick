require 'open-uri'

class BaseStockChecker < Struct.new(:url)

  def self.in_stock?(url)
    new(url).in_stock?
  end

  def page
    @page ||= Nokogiri::HTML(open(url, 'User-Agent' => user_agent))
  end

  def user_agent
    "mozilla/5.0 (windows nt 6.3; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/37.0.2049.0 safari/537.36"
  end

end
