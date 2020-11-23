class AddOccupiedToSlips < ActiveRecord::Migration[6.0]
  def change
    add_column :slips, :occupied, :boolean
  end
end
