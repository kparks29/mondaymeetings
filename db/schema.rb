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

ActiveRecord::Schema.define(version: 20140821003234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: true do |t|
    t.float    "business_checking"
    t.float    "personal_checking"
    t.float    "bank_balance"
    t.float    "revenue"
    t.float    "hours"
    t.integer  "shifts"
    t.float    "labor_percent"
    t.integer  "leads"
    t.integer  "closes"
    t.float    "debt_payoff"
    t.integer  "yelp_average"
    t.integer  "yelp_amount"
    t.integer  "yelp_one"
    t.integer  "yelp_two"
    t.integer  "yelp_three"
    t.integer  "yelp_four"
    t.integer  "yelp_five"
    t.boolean  "tax_is_paid"
    t.float    "tax_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
