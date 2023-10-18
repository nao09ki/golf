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

ActiveRecord::Schema.define(version: 2023_08_26_220253) do

  create_table "tweets", force: :cascade do |t|
    t.date "date"
    t.string "place"
    t.integer "score1"
    t.integer "score2"
    t.integer "score3"
    t.integer "score4"
    t.integer "score5"
    t.integer "score6"
    t.integer "score7"
    t.integer "score8"
    t.integer "score9"
    t.integer "score10"
    t.integer "score11"
    t.integer "score12"
    t.integer "score13"
    t.integer "score14"
    t.integer "score15"
    t.integer "score16"
    t.integer "score17"
    t.integer "score18"
    t.integer "scoresum"
    t.text "good"
    t.text "more"
    t.integer "selfevaluation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
