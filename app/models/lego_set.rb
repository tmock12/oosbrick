class LegoSet < ActiveRecord::Base
  validates :name, :number, presence: true, uniqueness: {message: 'already exists'}
  validates :number, numericality: true

  scope :approved, ->{ where(approved: true) }
  scope :pending_approval, ->{ where(approved: false) }

  def check_stock!
    self.update_columns(stock_hash)
  end

  def approve!
    update_attribute(:approved, true)
  end

  private

  def stock_hash
    {
      walmart_in_stock: LegoStockChecker::WalmartCheck.in_stock?(walmart_url),
      amazon_in_stock: LegoStockChecker::AmazonCheck.in_stock?(amazon_url),
      lego_in_stock: LegoStockChecker::LegoShopCheck.in_stock?(lego_url),
      tru_in_stock: LegoStockChecker::TruCheck.in_stock?(tru_url),
      target_in_stock: LegoStockChecker::TargetCheck.in_stock?(target_url)
    }
  end
end
