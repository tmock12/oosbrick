class AmazonStockChecker < BaseStockChecker
  def in_stock?
    page.at_css('#merchant-info').text.include?('Ships from and sold by Amazon.com')
  end
end
