namespace :stock_check do
  task daily: :environment do
    LegoSet.all.each do |lego|
      lego.check_stock!
      sleep 5
    end
  end
end
