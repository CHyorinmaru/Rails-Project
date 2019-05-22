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

ActiveRecord::Schema.define(version: 2019_05_22_094633) do

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "shopping_cart_id"
    t.index ["shopping_cart_id"], name: "index_cards_on_shopping_cart_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "cards_shopping_carts", id: false, force: :cascade do |t|
    t.integer "shopping_cart_id", null: false
    t.integer "card_id", null: false
    t.index ["card_id", "shopping_cart_id"], name: "index_cards_shopping_carts_on_card_id_and_shopping_cart_id"
    t.index ["shopping_cart_id", "card_id"], name: "index_cards_shopping_carts_on_shopping_cart_id_and_card_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shopping_carts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.boolean "email_confirmed", default: false
    t.string "confirm_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
