# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090304034156) do

  create_table "details", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
  end

  create_table "listings", :force => true do |t|
    t.integer  "price"
    t.string   "yacht_name"
    t.boolean  "yacht_new"
    t.string   "yacht_location_city"
    t.integer  "yacht_location_state_id"
    t.integer  "yacht_location_country_id"
    t.integer  "yacht_specification_length"
    t.string   "yacht_specification_manufacturer"
    t.string   "yacht_specification_model"
    t.integer  "yacht_specification_year"
    t.string   "yacht_specification_designer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "thumbnail_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
  end

end
