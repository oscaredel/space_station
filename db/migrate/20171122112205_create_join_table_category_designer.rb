class CreateJoinTableCategoryDesigner < ActiveRecord::Migration[5.1]
  def change
    create_join_table :categories, :designers do |t|
      t.index [:category_id, :designer_id]
      t.index [:designer_id, :category_id]
    end
  end
end
