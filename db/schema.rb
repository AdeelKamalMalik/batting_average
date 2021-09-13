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

ActiveRecord::Schema.define(version: 2021_09_13_115915) do

  create_table "battings", force: :cascade do |t|
    t.string "player_id"
    t.string "year_id"
    t.integer "stint"
    t.string "team_id"
    t.string "lg_id"
    t.float "g"
    t.float "ab"
    t.float "r"
    t.float "h"
    t.float "hr"
    t.float "rbi"
    t.float "sb"
    t.float "cs"
    t.float "bb"
    t.float "so"
    t.string "ibb"
    t.string "hbp"
    t.string "sh"
    t.string "sf"
    t.float "gidp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "year_id"
    t.string "lg_id"
    t.string "team_id"
    t.string "franch_id"
    t.string "div_id"
    t.string "rank"
    t.string "ghome"
    t.string "div_win"
    t.string "wc_win"
    t.string "lg_win"
    t.string "ws_win"
    t.string "name"
    t.string "park"
    t.string "attendance"
    t.string "bpf"
    t.string "ppf"
    t.string "team_idbr"
    t.string "team_i_dlahman45"
    t.string "team_i_dretro"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
