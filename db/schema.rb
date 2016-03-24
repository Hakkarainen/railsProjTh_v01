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

ActiveRecord::Schema.define(version: 20160324195631) do

  create_table "game_configs", force: :cascade do |t|
    t.integer  "gameConfigID"
    t.integer  "gameID"
    t.string   "gameConfP1"
    t.string   "gameConfP2"
    t.string   "gameConfP3"
    t.string   "gameConfP4"
    t.string   "gameConfP5"
    t.string   "gameConfP6"
    t.string   "gameConfP7"
    t.string   "gameConfP8"
    t.string   "gameConfP9"
    t.string   "gameConfP10"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "game_statuses", force: :cascade do |t|
    t.integer  "gameStatusID"
    t.string   "gameConfigID"
    t.integer  "gameLevel"
    t.string   "snapshotID"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer  "gameID"
    t.string   "gameName"
    t.string   "gameVersion"
    t.string   "gameGenre"
    t.string   "gamePublisher"
    t.integer  "gamePublYear"
    t.string   "pricePoint1"
    t.string   "pricePoint2"
    t.string   "pricePoint3"
    t.string   "pricePoint4"
    t.string   "conditionsInfo"
    t.integer  "playerCount"
    t.integer  "playCount"
    t.integer  "bestResult"
    t.integer  "secondBestResult"
    t.integer  "thirdBestResult"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "player_statuses", force: :cascade do |t|
    t.integer  "playerID"
    t.string   "timeStamp"
    t.integer  "gameStatus"
    t.string   "gameConfigID"
    t.integer  "gameLevel"
    t.integer  "gameScore1"
    t.integer  "gameScore2"
    t.integer  "gameScore3"
    t.integer  "gameScore4"
    t.integer  "gameScore5"
    t.integer  "gameScore6"
    t.integer  "gameScore7"
    t.integer  "gameScore8"
    t.integer  "gameScore9"
    t.integer  "gameScore10"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "playerID"
    t.integer  "sessionID"
    t.string   "nickName"
    t.string   "password"
    t.string   "role"
    t.string   "priviLedges"
    t.string   "firstName"
    t.string   "surName"
    t.string   "lastLogInTime"
    t.integer  "gameSubsriptionID"
    t.string   "gameToLogID"
    t.integer  "gameEventLogID"
    t.string   "loggingOnOffToggle"
    t.string   "eLogPeriodBeging"
    t.string   "eLogPeriodEnd"
    t.string   "eventLoggingInfo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "snap_event_lists", force: :cascade do |t|
    t.integer  "snapEventListID"
    t.string   "snapEventType"
    t.string   "eventListTimeStamp"
    t.integer  "snapEvent1"
    t.integer  "snapEvent2"
    t.integer  "snapEvent3"
    t.integer  "snapEvent4"
    t.integer  "snapEvent5"
    t.integer  "snapEvent6"
    t.integer  "snapEvent7"
    t.integer  "snapEvent8"
    t.string   "snapEvent9"
    t.string   "snapEvent10"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "snapshots", force: :cascade do |t|
    t.string   "snapshotID"
    t.integer  "interval"
    t.string   "firstSnapshot"
    t.string   "lastSnapshot"
    t.integer  "snapshot1"
    t.integer  "snapshot2"
    t.integer  "snapshot3"
    t.integer  "snapshot4"
    t.integer  "snapshot5"
    t.integer  "snapshot6"
    t.integer  "snapshot7"
    t.integer  "snapshot8"
    t.integer  "snapshot9"
    t.integer  "snapshot10"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "subscriptionID"
    t.integer  "gameSubsr1"
    t.string   "subscType"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
