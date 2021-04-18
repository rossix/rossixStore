class CreateStoreitems < ActiveRecord::Migration[6.1]
  def change
    create_table :storeitems do |t|
      t.string :artnr
      t.string :vendor
      t.string :description
      t.string :grammage
      t.string :size
      t.text :note
      t.integer :inventory
      t.string :stockyard
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
