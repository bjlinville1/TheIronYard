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

ActiveRecord::Schema.define(version: 20140812193156) do

  create_table "hospitals", force: true do |t|
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "beds"
  end

  create_table "medications", force: true do |t|
    t.string   "description"
    t.string   "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "patient_id"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "malady"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "workflow_state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hospital_id"
  end

end
