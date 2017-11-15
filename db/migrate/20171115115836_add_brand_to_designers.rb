class AddBrandToDesigners < ActiveRecord::Migration[5.1]
  def change
    add_column :designers, :brand, :string
  end
end
