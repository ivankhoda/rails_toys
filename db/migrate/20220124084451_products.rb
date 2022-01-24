class Products < ActiveRecord::Migration[7.0]
  def change
    create_table 'products', force: :cascade do |t|
      t.string 'product_name'
      t.decimal 'price'
      t.string 'comment'
      t.datetime 'created_at', precision: 6, null: false
      t.datetime 'updated_at', precision: 6, null: false
    end
  end
end
