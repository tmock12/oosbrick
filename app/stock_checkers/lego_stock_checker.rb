class LegoStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css("li[class*='availability']").text.include?('Sold Out')
  end
end
