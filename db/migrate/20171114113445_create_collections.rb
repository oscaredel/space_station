class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.string :season
      t.integer :year
      t.text :detail
      t.references :designer, foreign_key: true

      t.timestamps
    end
  end
end
