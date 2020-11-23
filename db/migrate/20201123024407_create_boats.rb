class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.float :length
      t.string :color
      t.references :slip, null: false, foreign_key: true


      t.timestamps
    end
  end
end
