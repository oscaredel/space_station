class CreateOrderProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :order_products do |t|
      t.string :size
      t.integer :quantity
      t.references :store_product, foreign_key: true
      t.references :designer_order, foreign_key: true

      t.timestamps
    end
  end
end
