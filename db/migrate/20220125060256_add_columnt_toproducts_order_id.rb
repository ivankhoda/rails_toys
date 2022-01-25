class AddColumntToproductsOrderId < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :order_id, :int
  end
end
