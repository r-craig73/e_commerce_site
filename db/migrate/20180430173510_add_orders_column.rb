class AddOrdersColumn < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.column :total_price, :decimal
      t.column :status, :string
      t.column :account_id, :integer

      t.timestamps
    end
  end
end
