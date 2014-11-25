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

end
