class WalmartStockChecker < BaseStockChecker
  def in_stock?
    !page.at_css('.btn-out-of-stock') && !page.at_css('.outofStockMsg') && lowest_price
  end

  def lowest_price
    price = case
    when page.at_css('.bigPriceText1')
      page.at_css('.bigPriceText1')
    when page.at_css('.price')
      page.at_css('.price')
    end

    price.text.to_s.strip.sub('$','') if price
  end
end
