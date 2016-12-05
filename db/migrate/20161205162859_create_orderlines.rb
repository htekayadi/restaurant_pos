class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.references :order

      t.timestamps null: false
    end
    add_index :orderlines, :order_id
  end
end
