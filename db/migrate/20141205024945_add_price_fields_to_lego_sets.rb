class AddPriceFieldsToLegoSets < ActiveRecord::Migration
  def change
    add_column :lego_sets, :walmart_price, :float
    add_column :lego_sets, :amazon_price, :float
    add_column :lego_sets, :lego_price, :float
    add_column :lego_sets, :tru_price, :float
    add_column :lego_sets, :target_price, :float
  end
end
