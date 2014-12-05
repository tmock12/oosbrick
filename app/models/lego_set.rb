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
    walmart ||= LegoStockChecker::WalmartCheck.in_stock?(walmart_url)
    amazon  ||= LegoStockChecker::AmazonCheck.in_stock?(amazon_url)
    lego    ||= LegoStockChecker::LegoShopCheck.in_stock?(lego_url)
    tru     ||= LegoStockChecker::TruCheck.in_stock?(tru_url)
    target  ||= LegoStockChecker::TargetCheck.in_stock?(target_url)
    {
      walmart_in_stock: walmart[:in_stock],
      walmart_price: walmart[:price],
      amazon_in_stock: amazon[:in_stock],
      amazon_price: amazon[:price],
      lego_in_stock: lego[:in_stock],
      lego_price: lego[:price],
      tru_in_stock: tru[:in_stock],
      tru_price: tru[:price],
      target_in_stock: target[:in_stock],
      target_price: target[:price]
    }
  end
end
