class AddTargetUrlAndTargetInStockToLegoSets < ActiveRecord::Migration
  def change
    add_column :lego_sets, :target_url, :string, limit: 1024
    add_column :lego_sets, :target_in_stock, :boolean
  end
end
