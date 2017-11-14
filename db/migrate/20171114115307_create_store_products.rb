class CreateStoreProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :store_products do |t|
      t.references :product, foreign_key: true
      t.references :store_collection, foreign_key: true

      t.timestamps
    end
  end
end
