class AddInStockFieldsToLegoSets < ActiveRecord::Migration
  def change
    add_column :lego_sets, :walmart_in_stock, :boolean
    add_column :lego_sets, :amazon_in_stock, :boolean
    add_column :lego_sets, :lego_in_stock, :boolean
  end
end
