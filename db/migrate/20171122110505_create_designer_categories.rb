class CreateDesignerCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :designer_categories do |t|
      t.references :category, foreign_key: true
      t.references :designer, foreign_key: true

      t.timestamps
    end
  end
end
