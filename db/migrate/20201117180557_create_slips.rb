class CreateSlips < ActiveRecord::Migration[6.0]
  def change
    create_table :slips do |t|
      t.references :boat, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
