class IndexProductsOnOrderId < ActiveRecord::Migration[7.0]
  def change
    add_index :products, :order_id
  end
end
