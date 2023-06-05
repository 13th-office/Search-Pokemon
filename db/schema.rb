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

ActiveRecord::Schema[7.0].define(version: 2023_06_05_142211) do
  create_table "berries", force: :cascade do |t|
    t.integer "number"
    t.integer "growth_time"
    t.integer "size"
    t.integer "smoothness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemon_pokemon_types", id: false, force: :cascade do |t|
    t.integer "pokemons_id"
    t.integer "pokemon_types_id"
    t.index ["pokemon_types_id"], name: "index_pokemon_pokemon_types_on_pokemon_types_id"
    t.index ["pokemons_id"], name: "index_pokemon_pokemon_types_on_pokemons_id"
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
