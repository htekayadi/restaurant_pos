class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer
      t.references :table
      t.references :waiter

      t.timestamps null: false
    end
    add_index :orders, :customer_id
    add_index :orders, :table_id
    add_index :orders, :waiter_id
  end
end
