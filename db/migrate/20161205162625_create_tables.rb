class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :no
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
