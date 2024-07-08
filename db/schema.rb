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

ActiveRecord::Schema[7.1].define(version: 2024_07_08_175857) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "liquor_distilleries", force: :cascade do |t|
    t.string "name"
    t.integer "total_distilleries"
    t.boolean "has_bourbon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liquors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.boolean "has_grain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "liquor_distillery_id", null: false
    t.index ["liquor_distillery_id"], name: "index_liquors_on_liquor_distillery_id"
  end

  add_foreign_key "liquors", "liquor_distilleries"
end
