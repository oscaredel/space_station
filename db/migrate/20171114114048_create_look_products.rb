class CreateLookProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :look_products do |t|
      t.references :look, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end