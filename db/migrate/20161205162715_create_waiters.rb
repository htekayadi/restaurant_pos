class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
