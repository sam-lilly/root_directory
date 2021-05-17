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

ActiveRecord::Schema.define(version: 2021_05_17_051408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "name", null: false
    t.float "price", null: false
    t.text "overview", null: false
    t.text "details", null: false
    t.text "dimensions", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_accessories_on_name"
    t.index ["price"], name: "index_accessories_on_price"
    t.index ["product_id"], name: "index_accessories_on_product_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "company"
    t.string "address_1", null: false
    t.string "address_2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "country", null: false
    t.string "zip_code", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_blogs_on_title"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["product_id"], name: "index_cart_items_on_product_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "completed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["completed"], name: "index_carts_on_completed"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name_company", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.string "reference", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_contacts_on_email"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "cart_id", null: false
    t.integer "address_id", null: false
    t.datetime "delivery_date", null: false
    t.string "delivery_type", null: false
    t.integer "order_total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_orders_on_address_id"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "plant_dbs", force: :cascade do |t|
    t.integer "plant_id", null: false
    t.string "name", null: false
    t.text "placement"
    t.text "routine_maintenance"
    t.text "recommended_pots"
    t.text "recommended_accessories"
    t.text "faq"
    t.text "standard_planter_instructions"
    t.text "self_watering_container_instructions"
    t.text "additional_care_guides"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_plant_dbs_on_name"
    t.index ["plant_id"], name: "index_plant_dbs_on_plant_id"
  end

  create_table "planters", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "name", null: false
    t.float "price", null: false
    t.string "size", null: false
    t.string "color", null: false
    t.string "material", null: false
    t.text "overview", null: false
    t.text "details", null: false
    t.text "dimensions", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "planter_type", null: false
    t.integer "inches"
    t.index ["color"], name: "index_planters_on_color"
    t.index ["material"], name: "index_planters_on_material"
    t.index ["name"], name: "index_planters_on_name"
    t.index ["planter_type"], name: "index_planters_on_planter_type"
    t.index ["price"], name: "index_planters_on_price"
    t.index ["product_id"], name: "index_planters_on_product_id"
    t.index ["size"], name: "index_planters_on_size"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "plant_db_id", null: false
    t.string "name", null: false
    t.integer "inches", null: false
    t.float "price", null: false
    t.string "plant_type", null: false
    t.string "size", null: false
    t.string "light", null: false
    t.string "care_level", null: false
    t.string "benefits", null: false
    t.text "overview", null: false
    t.text "care", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benefits"], name: "index_plants_on_benefits"
    t.index ["care_level"], name: "index_plants_on_care_level"
    t.index ["inches"], name: "index_plants_on_inches"
    t.index ["light"], name: "index_plants_on_light"
    t.index ["name"], name: "index_plants_on_name"
    t.index ["plant_db_id"], name: "index_plants_on_plant_db_id"
    t.index ["plant_type"], name: "index_plants_on_plant_type"
    t.index ["price"], name: "index_plants_on_price"
    t.index ["product_id"], name: "index_plants_on_product_id"
    t.index ["size"], name: "index_plants_on_size"
  end

  create_table "products", force: :cascade do |t|
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
