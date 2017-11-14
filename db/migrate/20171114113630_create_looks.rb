class CreateLooks < ActiveRecord::Migration[5.1]
  def change
    create_table :looks do |t|
      t.string :name
      t.text :detail
      t.string :picture_1
      t.string :picture_2
      t.string :picture_3
      t.references :collection, foreign_key: true
      t.references :designer, foreign_key: true

      t.timestamps
    end
  end
end
