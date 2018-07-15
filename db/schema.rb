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

ActiveRecord::Schema.define(version: 2018_07_15_200817) do

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
    t.integer "total_damage_taken"
    t.float "deaths_per_thousand_damage_taken"
    t.float "kills_per_thousand_damage_dealt"
    t.float "kill_participation"
    t.float "damage_participation"
    t.float "gold_participation"
    t.float "damage_per_gold"
    t.float "wards_per_minute"
    t.float "gold_with_vision_wards"
  end

  create_table "periods", force: :cascade do |t|
    t.bigint "last_update_at"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_players_on_confirmation_token", unique: true
    t.index ["email"], name: "index_players_on_email", unique: true
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true
  end

  create_table "summoner_performances", force: :cascade do |t|
    t.string "summoner_id"
    t.string "summoner_name"
    t.string "season_id"
    t.string "elo"
    t.float "total_time_spent_playing"
    t.integer "total_games"
    t.integer "total_wins"
    t.integer "total_losses"
    t.float "kda"
    t.float "win_percentage"
    t.float "average_kills"
    t.float "average_deaths"
    t.float "average_assists"
    t.float "average_largest_killing_spree"
    t.float "average_largest_multi_kill"
    t.float "average_killing_sprees"
    t.float "average_double_kills"
    t.float "average_triple_kills"
    t.float "average_quadra_kills"
    t.float "average_penta_kills"
    t.float "average_total_damage_dealt_to_champions"
    t.float "average_gold_earned"
    t.float "average_total_minions_killed"
    t.float "average_neutral_minions_killed_team_jungle"
    t.float "average_neutral_minions_killed_enemy_jungle"
    t.float "average_vision_wards_bought_in_game"
    t.float "average_wards_placed"
    t.float "average_wards_killed"
    t.float "average_creeps_per_min_deltas_0_10"
    t.float "average_creeps_per_min_deltas_10_20"
    t.float "average_creeps_per_min_deltas_20_30"
    t.float "average_creeps_per_min_deltas_30_end"
    t.float "average_xp_per_min_deltas_0_10"
    t.float "average_xp_per_min_deltas_10_20"
    t.float "average_xp_per_min_deltas_20_30"
    t.float "average_xp_per_min_deltas_30_end"
    t.float "average_gold_per_min_deltas_0_10"
    t.float "average_gold_per_min_deltas_10_20"
    t.float "average_gold_per_min_deltas_20_30"
    t.float "average_gold_per_min_deltas_30_end"
    t.float "average_first_blood_kill"
    t.float "average_first_blood_assist"
    t.float "average_first_tower_kill"
    t.float "average_first_tower_assist"
    t.float "average_total_damage_taken"
    t.float "average_deaths_per_thousand_damage_taken"
    t.float "average_kills_per_thousand_damage_dealt"
    t.float "average_kill_participation"
    t.float "average_damage_participation"
    t.float "average_gold_participation"
    t.float "average_damage_per_gold"
    t.float "average_wards_per_minute"
    t.float "average_gold_with_vision_wards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "summoners", force: :cascade do |t|
    t.string "summoner_name"
    t.string "summoner_id"
    t.bigint "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_summoners_on_player_id"
  end

  add_foreign_key "summoners", "players"
end
