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

ActiveRecord::Schema.define(version: 20140708071033) do

  create_table "clients", force: true do |t|
    t.string   "ClientName"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.text     "code"
    t.text     "description"
    t.string   "billing_type"
    t.date     "start_date"
    t.string   "dead_date"
    t.date     "end_date"
    t.string   "git_url"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "code"
    t.text     "description"
    t.string   "billing_type"
    t.date     "start_date"
    t.date     "deadline_date"
    t.date     "end_date"
    t.string   "git_url"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

end
