class TruStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css("#eligibility:first-child li.unavail") && !!page.at_css("li.avail")
  end
end
