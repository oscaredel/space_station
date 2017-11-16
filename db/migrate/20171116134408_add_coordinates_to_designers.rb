class AddCoordinatesToDesigners < ActiveRecord::Migration[5.1]
  def change
    add_column :designers, :latitude, :float
    add_column :designers, :longitude, :float
  end
end
