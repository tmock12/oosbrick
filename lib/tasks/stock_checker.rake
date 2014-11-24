namespace :stock_check do
  task daily: :environment do
    LegoSet.all.each do |lego|
      lego.check_stock!
    end
  end
end
