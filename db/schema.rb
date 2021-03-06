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

ActiveRecord::Schema.define(version: 2018_08_18_185703) do

  create_table "most_mentions", force: :cascade do |t|
    t.integer "followers_count"
    t.string "screen_name"
    t.string "profile_link"
    t.datetime "created_at", null: false
    t.string "link"
    t.integer "retweet_count"
    t.string "text"
    t.integer "favourite_count"
    t.integer "user_id"
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_most_mentions_on_user_id"
  end

  create_table "most_relevants", force: :cascade do |t|
    t.integer "followers_count"
    t.string "screen_name"
    t.string "profile_link"
    t.datetime "created_at", null: false
    t.string "link"
    t.integer "retweet_count"
    t.string "text"
    t.integer "favourite_count"
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.integer "retweets_count"
    t.integer "favourites_count"
    t.string "text", limit: 255
    t.datetime "tweet_created_at"
    t.string "tweet_link"
    t.integer "tweet_external_id", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "screen_name"
    t.integer "followers_count"
    t.string "profile_link"
    t.integer "user_external_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
