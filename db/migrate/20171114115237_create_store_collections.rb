class CreateStoreCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :store_collections do |t|
      t.string :season
      t.integer :year
      t.text :details
      t.references :retailer, foreign_key: true

      t.timestamps
    end
  end
end
