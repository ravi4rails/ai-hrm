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

ActiveRecord::Schema.define(version: 2019_10_22_101245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bank_details", force: :cascade do |t|
    t.string "bank_name"
    t.string "account_number"
    t.string "branch"
    t.string "ifsc_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "employee_id"
    t.string "city"
    t.index ["employee_id"], name: "index_bank_details_on_employee_id"
  end

  create_table "departments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.date "established_from"
  end

  create_table "educational_credentials", force: :cascade do |t|
    t.string "course"
    t.string "board_or_university"
    t.string "city"
    t.string "marks"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_educational_credentials_on_employee_id"
  end

  create_table "email_employee_notifications", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "email_notification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_notification_id"], name: "index_email_employee_notifications_on_email_notification_id"
    t.index ["employee_id"], name: "index_email_employee_notifications_on_employee_id"
  end

  create_table "email_notifications", force: :cascade do |t|
    t.string "subject"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment"
  end

  create_table "employee_grades", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_relatives", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "address"
    t.string "relation"
    t.bigint "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_relatives_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email"
    t.date "date_of_birth"
    t.string "personal_contact"
    t.string "emergency_contact"
    t.string "profile_photo"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zipcode"
    t.string "job_title"
    t.text "job_description"
    t.date "date_of_joining"
    t.string "gender"
    t.string "marital_status"
    t.string "blood_group"
    t.string "religion"
    t.string "employee_code"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "department_id"
    t.bigint "manager_id"
    t.boolean "is_manager", default: false
    t.bigint "employee_grade_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employee_grade_id"], name: "index_employees_on_employee_grade_id"
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  add_foreign_key "bank_details", "employees"
  add_foreign_key "educational_credentials", "employees"
  add_foreign_key "email_employee_notifications", "email_notifications"
  add_foreign_key "email_employee_notifications", "employees"
  add_foreign_key "employee_relatives", "employees"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "employee_grades"
end
