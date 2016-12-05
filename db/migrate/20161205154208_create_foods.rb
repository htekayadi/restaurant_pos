class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :code
      t.decimal :price

      t.timestamps null: false
    end
  end
end
