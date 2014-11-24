class CreateLegoSets < ActiveRecord::Migration
  def change
    create_table :lego_sets do |t|
      t.string :number
      t.string :name
      t.string :amazon_url, limit: 1024
      t.string :walmart_url, limit: 1024
      t.string :lego_url, limit: 1024
      t.string :price_in_stock
      t.string :price

      t.timestamps
    end
  end
end
