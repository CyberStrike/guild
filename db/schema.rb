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

<<<<<<< 1a6f87e6727a6f9a0b454ad25fbcb25cbaa5ab3d
ActiveRecord::Schema.define(version: 20160529030247) do
=======
ActiveRecord::Schema.define(version: 20160529010851) do
>>>>>>> scaffolded jobs

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "link"
    t.string   "location"
    t.text     "description"
    t.boolean  "remote"
    t.date     "exp_date"
<<<<<<< 1a6f87e6727a6f9a0b454ad25fbcb25cbaa5ab3d
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "archived",    default: false
=======
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
>>>>>>> scaffolded jobs
  end

end
