# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_125_061_306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'orders', force: :cascade do |t|
    t.string 'customer'
    t.integer 'total_price'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'products', array: true
    t.integer 'order_id'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'product_name'
    t.integer 'price'
    t.string 'comment'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.integer 'order_id'
    t.index ['order_id'], name: 'index_products_on_order_id'
  end

  add_foreign_key 'products', 'orders'
end
