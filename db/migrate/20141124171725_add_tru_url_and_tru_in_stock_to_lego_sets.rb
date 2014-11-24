class AddTruUrlAndTruInStockToLegoSets < ActiveRecord::Migration
  def change
    add_column :lego_sets, :tru_url, :string, limit: 1024
    add_column :lego_sets, :tru_in_stock, :boolean
  end
end
