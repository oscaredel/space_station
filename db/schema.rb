# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171114115855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collections", force: :cascade do |t|
    t.string "season"
    t.integer "year"
    t.text "detail"
    t.bigint "designer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designer_id"], name: "index_collections_on_designer_id"
  end

  create_table "designer_orders", force: :cascade do |t|
    t.decimal "total_quote"
    t.boolean "order_requested", default: false
    t.boolean "order_confirmed", default: false
    t.bigint "store_collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_collection_id"], name: "index_designer_orders_on_store_collection_id"
  end

  create_table "designers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "profile_picture"
    t.string "city"
    t.integer "age"
    t.text "detail"
    t.index ["email"], name: "index_designers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_designers_on_reset_password_token", unique: true
  end

  create_table "look_products", force: :cascade do |t|
    t.bigint "look_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["look_id"], name: "index_look_products_on_look_id"
    t.index ["product_id"], name: "index_look_products_on_product_id"
  end

  create_table "looks", force: :cascade do |t|
    t.string "name"
    t.text "detail"
    t.string "picture_1"
    t.string "picture_2"
    t.string "picture_3"
    t.bigint "collection_id"
    t.bigint "designer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_looks_on_collection_id"
    t.index ["designer_id"], name: "index_looks_on_designer_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.string "size"
    t.integer "quantity"
    t.bigint "store_product_id"
    t.bigint "designer_order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designer_order_id"], name: "index_order_products_on_designer_order_id"
    t.index ["store_product_id"], name: "index_order_products_on_store_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "detail"
    t.string "color"
    t.text "sizes"
    t.string "picture_1"
    t.string "picture_2"
    t.string "picture_3"
    t.string "picture_4"
    t.bigint "collection_id"
    t.bigint "designer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_products_on_collection_id"
    t.index ["designer_id"], name: "index_products_on_designer_id"
  end

  create_table "retailers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "profile_picture"
    t.integer "age"
    t.string "store_name"
    t.string "city"
    t.text "detail"
    t.string "store_picture_1"
    t.string "store_picture_2"
    t.string "store_picture_3"
    t.index ["email"], name: "index_retailers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_retailers_on_reset_password_token", unique: true
  end

  create_table "store_collections", force: :cascade do |t|
    t.string "season"
    t.integer "year"
    t.text "details"
    t.bigint "retailer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["retailer_id"], name: "index_store_collections_on_retailer_id"
  end

  create_table "store_products", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "store_collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_store_products_on_product_id"
    t.index ["store_collection_id"], name: "index_store_products_on_store_collection_id"
  end

  add_foreign_key "collections", "designers"
  add_foreign_key "designer_orders", "store_collections"
  add_foreign_key "look_products", "looks"
  add_foreign_key "look_products", "products"
  add_foreign_key "looks", "collections"
  add_foreign_key "looks", "designers"
  add_foreign_key "order_products", "designer_orders"
  add_foreign_key "order_products", "store_products"
  add_foreign_key "products", "collections"
  add_foreign_key "products", "designers"
  add_foreign_key "store_collections", "retailers"
  add_foreign_key "store_products", "products"
  add_foreign_key "store_products", "store_collections"
end
