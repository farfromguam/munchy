# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170608161923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meals", ["menu_id"], name: "index_meals_on_menu_id", using: :btree
  add_index "meals", ["recipe_id"], name: "index_meals_on_recipe_id", using: :btree

  create_table "menu_meals", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menu_meals", ["meal_id"], name: "index_menu_meals_on_meal_id", using: :btree
  add_index "menu_meals", ["menu_id"], name: "index_menu_meals_on_menu_id", using: :btree

  create_table "menu_recipes", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menu_recipes", ["menu_id"], name: "index_menu_recipes_on_menu_id", using: :btree
  add_index "menu_recipes", ["recipe_id"], name: "index_menu_recipes_on_recipe_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "menus", ["user_id"], name: "index_menus_on_user_id", using: :btree

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.string   "unit"
    t.integer  "quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "recipe_ingredients", ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id", using: :btree
  add_index "recipe_ingredients", ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "servings"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "directions"
    t.text     "time_prep"
    t.text     "time_cook"
    t.text     "time_cleanup"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "meals", "menus"
  add_foreign_key "meals", "recipes"
  add_foreign_key "menu_meals", "meals"
  add_foreign_key "menu_meals", "menus"
  add_foreign_key "menu_recipes", "menus"
  add_foreign_key "menu_recipes", "recipes"
  add_foreign_key "menus", "users"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
end
