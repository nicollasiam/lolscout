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

ActiveRecord::Schema.define(version: 2018_06_13_141207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "champions", force: :cascade do |t|
    t.string "champion_name"
    t.string "champion_id"
    t.string "champion_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "item_name"
    t.string "item_id"
    t.string "item_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string "summoner_id"
    t.string "match_id"
    t.string "season_id"
    t.string "champion_id"
    t.integer "duration"
    t.bigint "date"
    t.string "summoner_name"
    t.string "elo"
    t.boolean "win"
    t.integer "kills"
    t.integer "deaths"
    t.integer "assists"
    t.integer "largest_killing_spree"
    t.integer "largest_multi_kill"
    t.integer "killing_sprees"
    t.integer "double_kills"
    t.integer "triple_kills"
    t.integer "quadra_kills"
    t.integer "penta_kills"
    t.integer "total_damage_dealt_to_champions"
    t.integer "gold_earned"
    t.integer "total_minions_killed"
    t.integer "neutral_minions_killed_team_jungle"
    t.integer "neutral_minions_killed_enemy_jungle"
    t.integer "vision_wards_bought_in_game"
    t.integer "wards_placed"
    t.integer "wards_killed"
    t.float "creeps_per_min_deltas_0_10"
    t.float "creeps_per_min_deltas_10_20"
    t.float "creeps_per_min_deltas_20_30"
    t.float "creeps_per_min_deltas_30_end"
    t.float "xp_per_min_deltas_0_10"
    t.float "xp_per_min_deltas_10_20"
    t.float "xp_per_min_deltas_20_30"
    t.float "xp_per_min_deltas_30_end"
    t.float "gold_per_min_deltas_0_10"
    t.float "gold_per_min_deltas_10_20"
    t.float "gold_per_min_deltas_20_30"
    t.float "gold_per_min_deltas_30_end"
    t.string "item_1"
    t.string "item_2"
    t.string "item_3"
    t.string "item_4"
    t.string "item_5"
    t.string "item_6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_0"
    t.boolean "first_blood_kill"
    t.boolean "first_blood_assist"
    t.boolean "first_tower_kill"
    t.boolean "first_tower_assist"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "summoner_name"
    t.string "summoner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
