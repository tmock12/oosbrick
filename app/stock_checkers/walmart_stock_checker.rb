class WalmartStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css('.btn-out-of-stock') && !page.at_css('.outofStockMsg')
  end
end
