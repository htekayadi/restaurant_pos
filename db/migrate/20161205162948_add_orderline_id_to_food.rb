class AddOrderlineIdToFood < ActiveRecord::Migration
  def change
    add_column :foods, :orderline_id, :integer
  end
end
