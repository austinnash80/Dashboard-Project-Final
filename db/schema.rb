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

ActiveRecord::Schema.define(version: 20180513032847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datasheets", force: :cascade do |t|
    t.integer "seq_number"
    t.string "seq_version"
    t.string "category"
    t.string "seq_title"
    t.integer "hours"
    t.date "pub_date"
    t.date "seq_update"
    t.date "seq_original_list"
    t.boolean "active"
    t.date "drop_date"
    t.text "drop_reason"
    t.integer "pes_number"
    t.string "pes_version"
    t.boolean "pes_listed"
    t.boolean "needs_approval"
    t.boolean "has_approval"
    t.text "approval_info"
    t.text "course_note"
    t.text "extra_note"
    t.boolean "extra_boolean"
    t.integer "extra_integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.integer "eid"
    t.integer "uid"
    t.string "des"
    t.date "start_date"
    t.date "complete_date"
    t.integer "seq_number"
    t.string "seq_v"
    t.string "seq_t"
    t.float "score"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mail_items", force: :cascade do |t|
    t.integer "mail_id"
    t.string "title"
    t.integer "quantity"
    t.string "data_name"
    t.string "art_name"
    t.text "msi_note"
    t.text "note_1"
    t.text "note_2"
    t.boolean "complete"
    t.boolean "boolean_1"
    t.integer "integer_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "data_file_name"
    t.string "data_content_type"
    t.integer "data_file_size"
    t.datetime "data_updated_at"
  end

  create_table "mail_schedules", force: :cascade do |t|
    t.integer "mail_id"
    t.date "drop_date"
    t.integer "group_30"
    t.integer "group_60"
    t.integer "group_90"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "note"
    t.boolean "due"
    t.date "due_date"
    t.boolean "done"
    t.boolean "important"
    t.boolean "type_one"
    t.boolean "type_two"
    t.boolean "type_three"
    t.boolean "extra_boolean"
    t.string "extra_string"
    t.integer "extra_integer"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "updatesheets", force: :cascade do |t|
    t.integer "pes_number"
    t.string "pes_version"
    t.date "date_received"
    t.boolean "update_course"
    t.text "note_approval"
    t.boolean "text_complete"
    t.boolean "exam_complete"
    t.boolean "course_listed"
    t.date "date_listed"
    t.string "role"
    t.string "rolep"
    t.string "irs_number"
    t.boolean "proofed"
    t.text "proofed_note"
    t.integer "datasheet_id"
    t.integer "seq_number"
    t.string "seq_version"
    t.string "seq_title"
    t.string "extra_string"
    t.integer "extra_integer"
    t.boolean "extra_boolean"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
