class AddForeignKeyToProductsOrders < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :products, :orders
  end
end
