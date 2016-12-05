class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.reference :customer
      t.reference :table
      t.reference :waiter

      t.timestamps null: false
    end
    add_index :orders, :customer
    add_index :orders, :table
    add_index :orders, :waiter
  end
end
