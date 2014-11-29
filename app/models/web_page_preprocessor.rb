class WebPagePreprocessor
  SCRAPER_SCRIPT = Rails.root.join("lib/webscraper.js").to_s
  LOOKUP_STRING = "-------------------- HTML GOES HERE -------------------------"

  def self.process(url)
    new(url).process
  end

  def initialize(url)
    @url = url.to_s
  end

  def process
    html = Phantomjs.run(SCRAPER_SCRIPT, @url).to_s
    html.split(LOOKUP_STRING, 2).second
  end
end
