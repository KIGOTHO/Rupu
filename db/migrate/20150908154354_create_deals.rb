class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :description
      t.string :company
      t.decimal :price, precision: 8, scale: 2


      t.timestamps null: false
    end
  end
end
