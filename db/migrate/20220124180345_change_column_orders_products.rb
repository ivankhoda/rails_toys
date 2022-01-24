class ChangeColumnOrdersProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :products
    add_column :orders, :products, :string, array: true
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
