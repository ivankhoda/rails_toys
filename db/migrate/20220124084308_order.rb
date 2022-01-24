class Order < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string 'customer'
      t.string 'products'
      t.decimal  'total_price'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end
  end
end
