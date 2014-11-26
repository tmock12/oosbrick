class StockCheckerJob
  include SuckerPunch::Job

  def check_stock(lego_set)
    lego_set.check_stock!
  end
end
