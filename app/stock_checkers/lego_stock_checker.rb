class LegoStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css("li[class*='availability']").text.match(/sold out|out of stock/i)
  end
end
