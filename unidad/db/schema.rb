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

ActiveRecord::Schema.define(version: 20160229214025) do

  create_table "apartments", force: :cascade do |t|
    t.integer  "number"
    t.integer  "tower_id"
    t.integer  "floor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "identificacion"
    t.integer  "apartment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "towers", force: :cascade do |t|
    t.string   "name"
    t.string   "doorman"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "cc"
    t.integer  "apartment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
