class WalmartStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css('.btn-out-of-stock') && !page.at_css('.outofStockMsg')
  end

  def needs_preprocessing?
    true
  end
end
