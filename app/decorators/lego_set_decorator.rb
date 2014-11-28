class LegoSetDecorator < LittleDecorator

  %w[walmart amazon lego tru target].each do |shop|
    define_method "#{shop}_in_stock" do
      case record.send("#{shop}_in_stock").to_s
      when 'true'
        "In Stock"
      when 'false'
        "OOS"
      else
        "na"
      end
    end
  end

  def amazon_affiliate_url
    AmazonAffiliate.new(amazon_url).url
  end

  def walmart_affiliate_url
    WalmartAffiliate.new(walmart_url).url
  end
end
