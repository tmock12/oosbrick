class LegoSet < ActiveRecord::Base
  validates :name, :number, presence: true
  after_create :check_stock!

  def check_stock!
    self.walmart_in_stock = WalmartStockChecker.in_stock?(walmart_url) if walmart_url.present?
    self.amazon_in_stock = AmazonStockChecker.in_stock?(amazon_url) if amazon_url.present?
    self.lego_in_stock = LegoStockChecker.in_stock?(lego_url) if lego_url.present?
    self.save
  end
end