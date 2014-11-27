class LegoSet < ActiveRecord::Base
  validates :name, :number, presence: true, uniqueness: {message: 'already exists'}
  validates :number, numericality: true

  def check_stock!
    self.update_columns(stock_hash)
  end

  private

  def stock_hash
    {
      walmart_in_stock: WalmartStockChecker.in_stock?(walmart_url),
      amazon_in_stock: AmazonStockChecker.in_stock?(amazon_url),
      lego_in_stock: LegoStockChecker.in_stock?(lego_url),
      tru_in_stock: TruStockChecker.in_stock?(tru_url),
      target_in_stock: TargetStockChecker.in_stock?(target_url)
    }
  end
end
