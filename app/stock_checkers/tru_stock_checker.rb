class TruStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css("li.unavail") && !!page.at_css("li.avail")
  end
end
