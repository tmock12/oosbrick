class TargetStockChecker < BaseStockChecker
  def in_stock?
    !!page.at_css("#textblock1 #addToCart") &&
      page.at_css("#textblock1 .availmsg").try(:text).to_s !~ /out of stock/
  end
end

