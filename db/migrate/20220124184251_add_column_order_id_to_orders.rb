class AddColumnOrderIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :order_id, :int, unique: true
  end
end
