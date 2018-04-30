class RenameProductDescriptionColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :descripton, :description
  end
end
