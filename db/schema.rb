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

ActiveRecord::Schema.define(version: 2020_06_10_024608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chefs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.string "store"
    t.string "street"
    t.integer "phone"
    t.index ["email"], name: "index_chefs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_chefs_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "chef_id"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chef_id"], name: "index_comments_on_chef_id"
    t.index ["customer_id"], name: "index_comments_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "material_racipes", force: :cascade do |t|
    t.bigint "material_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_material_racipes_on_material_id"
    t.index ["recipe_id"], name: "index_material_racipes_on_recipe_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "amount", null: false
    t.integer "price", null: false
    t.bigint "chef_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chef_id"], name: "index_materials_on_chef_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "amount", null: false
    t.integer "cost", null: false
    t.string "image"
    t.bigint "material_id"
    t.bigint "chef_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chef_id"], name: "index_recipes_on_chef_id"
    t.index ["material_id"], name: "index_recipes_on_material_id"
  end

  add_foreign_key "comments", "chefs"
  add_foreign_key "comments", "customers"
  add_foreign_key "material_racipes", "materials"
  add_foreign_key "material_racipes", "recipes"
  add_foreign_key "materials", "chefs"
  add_foreign_key "recipes", "chefs"
end
