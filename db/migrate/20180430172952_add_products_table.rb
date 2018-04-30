class AddProductsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :price, :decimal
      t.column :name, :string
      t.column :descripton, :string

      t.timestamps
    end
  end
end
