class ConvertLegoSetsNumberToIntegerFromString < ActiveRecord::Migration
  def change
    rename_column :lego_sets, :number, :old_number
    add_column :lego_sets, :number, :integer
    LegoSet.all.each do |lego_set|
      lego_set.update_column(:number, lego_set.old_number.to_i)
    end
    remove_column :lego_sets, :old_number
  end
end
