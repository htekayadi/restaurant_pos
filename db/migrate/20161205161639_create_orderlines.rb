class CreateOrderlines < ActiveRecord::Migration
  def change
    create_table :orderlines do |t|
      t.reference :order

      t.timestamps null: false
    end
    add_index :orderlines, :order
  end
end
