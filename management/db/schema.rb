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

ActiveRecord::Schema.define(:version => 20130109014500) do

  create_table "books", :force => true do |t|
    t.integer  "price"
    t.integer  "datum_id"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "books", ["buyer_id"], :name => "index_books_on_buyer_id"
  add_index "books", ["datum_id"], :name => "index_books_on_datum_id"
  add_index "books", ["seller_id"], :name => "index_books_on_seller_id"

  create_table "data", :force => true do |t|
    t.string   "isbn"
    t.string   "title"
    t.string   "author"
    t.string   "edition"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "course"
  end

  create_table "flags", :force => true do |t|
    t.string   "key"
    t.boolean  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "uniqname"
    t.string   "umid"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "barcode"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "users", :force => true do |t|
    t.string   "uniqname"
    t.boolean  "admin"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
