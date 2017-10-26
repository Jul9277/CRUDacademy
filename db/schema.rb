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

ActiveRecord::Schema.define(version: 20171026163306) do

  create_table "commentaires", force: :cascade do |t|
    t.integer "pin_id"
    t.integer "utilisateur_id"
    t.text "contenu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cours", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gossips", force: :cascade do |t|
    t.integer "moussaillon_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moussaillon_id"], name: "index_gossips_on_moussaillon_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "cour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cour_id"], name: "index_lessons_on_cour_id"
  end

  create_table "moussaillons", force: :cascade do |t|
    t.text "bio"
    t.string "username"
    t.string "adresse_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pins", force: :cascade do |t|
    t.string "liens"
    t.integer "utilisateur_id"
    t.integer "commentaire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentaire_id"], name: "index_pins_on_commentaire_id"
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "nom"
    t.integer "pin_id"
    t.integer "commentaire_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentaire_id"], name: "index_utilisateurs_on_commentaire_id"
    t.index ["pin_id"], name: "index_utilisateurs_on_pin_id"
  end

end
