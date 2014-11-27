class AddApprovedToLegoSets < ActiveRecord::Migration
  def change
    add_column :lego_sets, :approved, :boolean, default: false
    LegoSet.update_all(approved: true)
  end
end
