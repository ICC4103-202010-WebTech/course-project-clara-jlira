# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_20_232060) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_comments_on_Event_id"
    t.index ["User_id"], name: "index_comments_on_User_id"
  end

  create_table "event_files", force: :cascade do |t|
    t.string "file_dir"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_event_files_on_Event_id"
  end

  create_table "eventdates", force: :cascade do |t|
    t.datetime "event_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_eventdates_on_Event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "location"
    t.boolean "private"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Organization_id"
    t.index ["Organization_id"], name: "index_events_on_Organization_id"
    t.index ["User_id"], name: "index_events_on_User_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.boolean "acceptance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_invitations_on_Event_id"
    t.index ["User_id"], name: "index_invitations_on_User_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Organization_id"
    t.index ["Organization_id"], name: "index_memberships_on_Organization_id"
    t.index ["User_id"], name: "index_memberships_on_User_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.index ["User_id"], name: "index_messages_on_User_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "notification"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.index ["User_id"], name: "index_notifications_on_User_id"
  end

  create_table "organization_files", force: :cascade do |t|
    t.string "file_dir"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Organization_id"
    t.index ["Organization_id"], name: "index_organization_files_on_Organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start_date"
    t.string "contact"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "replies", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Comment_id"
    t.index ["Comment_id"], name: "index_replies_on_Comment_id"
    t.index ["User_id"], name: "index_replies_on_User_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "reason"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Event_id"
    t.index ["Event_id"], name: "index_reports_on_Event_id"
    t.index ["User_id"], name: "index_reports_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "password"
    t.string "email"
    t.decimal "phone"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id"
    t.integer "Invitation_id"
    t.integer "Eventdate_id"
    t.index ["Eventdate_id"], name: "index_votes_on_Eventdate_id"
    t.index ["Invitation_id"], name: "index_votes_on_Invitation_id"
    t.index ["User_id"], name: "index_votes_on_User_id"
  end

  add_foreign_key "comments", "Events"
  add_foreign_key "comments", "Users"
  add_foreign_key "event_files", "Events"
  add_foreign_key "eventdates", "Events"
  add_foreign_key "events", "Organizations"
  add_foreign_key "events", "Users"
  add_foreign_key "invitations", "Events"
  add_foreign_key "invitations", "Users"
  add_foreign_key "memberships", "Organizations"
  add_foreign_key "memberships", "Users"
  add_foreign_key "messages", "Users"
  add_foreign_key "notifications", "Users"
  add_foreign_key "organization_files", "Organizations"
  add_foreign_key "replies", "Comments"
  add_foreign_key "replies", "Users"
  add_foreign_key "reports", "Events"
  add_foreign_key "reports", "Users"
  add_foreign_key "votes", "Eventdates"
  add_foreign_key "votes", "Invitations"
  add_foreign_key "votes", "Users"
end
