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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130605181053) do

  create_table "cookbooks", :force => true do |t|
    t.string   "title"
    t.string   "cuisine"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "isbn"
  end

  create_table "recipes", :force => true do |t|
    t.text     "instructions"
    t.string   "name"
    t.integer  "serving_size"
    t.text     "img_url"
    t.string   "course"
    t.integer  "cook_time"
    t.integer  "cookbook_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
