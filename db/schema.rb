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

ActiveRecord::Schema.define(version: 2019_10_19_072410) do

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
    t.integer "employee_id"
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
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_educational_credentials_on_employee_id"
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
    t.integer "employee_id"
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
    t.integer "department_id"
    t.integer "manager_id"
    t.boolean "is_manager", default: false
    t.integer "employee_grade_id"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["employee_grade_id"], name: "index_employees_on_employee_grade_id"
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
    t.string "total_assigned_leaves"
    t.string "taken"
    t.string "remaining"
    t.index ["employee_id"], name: "index_leaves_on_employee_id"
  end

end
