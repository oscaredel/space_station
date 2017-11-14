class CreateDesignerOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :designer_orders do |t|
      t.decimal :total_quote
      t.boolean :order_requested, default: false
      t.boolean :order_confirmed, default: false
      t.references :store_collection, foreign_key: true

      t.timestamps
    end
  end
end
