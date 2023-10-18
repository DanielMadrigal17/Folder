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

ActiveRecord::Schema[7.0].define(version: 2023_10_18_171144) do
  create_table "project_teches", force: :cascade do |t|
    t.integer "Technology_id", null: false
    t.integer "Projects_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Projects_id"], name: "index_project_teches_on_Projects_id"
    t.index ["Technology_id"], name: "index_project_teches_on_Technology_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "Description"
    t.date "StartDate"
    t.date "FinalDate"
    t.string "Responsability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_types", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_users", force: :cascade do |t|
    t.integer "Skills_id", null: false
    t.integer "Skilltype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Skills_id"], name: "index_skill_users_on_Skills_id"
    t.index ["Skilltype_id"], name: "index_skill_users_on_Skilltype_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_networks", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types_users", force: :cascade do |t|
    t.integer "Users_id", null: false
    t.integer "UserTypes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["UserTypes_id"], name: "index_types_users_on_UserTypes_id"
    t.index ["Users_id"], name: "index_types_users_on_Users_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "project_teches", "Projects", column: "Projects_id"
  add_foreign_key "project_teches", "Technologies"
  add_foreign_key "skill_users", "Skills", column: "Skills_id"
  add_foreign_key "skill_users", "Skilltypes"
  add_foreign_key "types_users", "UserTypes", column: "UserTypes_id"
  add_foreign_key "types_users", "Users", column: "Users_id"
end
