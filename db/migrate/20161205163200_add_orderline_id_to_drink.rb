class AddOrderlineIdToDrink < ActiveRecord::Migration
  def change
    add_column :drinks, :orderline_id, :integer
  end
end
