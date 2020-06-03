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

ActiveRecord::Schema.define(version: 2020_06_02_152325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "universities_program_id"
    t.index ["universities_program_id"], name: "index_applications_on_universities_program_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "applications_documents", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "application_id"
    t.bigint "document_id"
    t.index ["application_id"], name: "index_applications_documents_on_application_id"
    t.index ["document_id"], name: "index_applications_documents_on_document_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "applications_document_id"
    t.bigint "universities_programs_document_id"
    t.index ["applications_document_id"], name: "index_documents_on_applications_document_id"
    t.index ["universities_programs_document_id"], name: "index_documents_on_universities_programs_document_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "application_id"
    t.index ["application_id"], name: "index_notifications_on_application_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "universities_programs_document_id"
    t.bigint "universities_program_id"
    t.index ["universities_program_id"], name: "index_programs_on_universities_program_id"
    t.index ["universities_programs_document_id"], name: "index_programs_on_universities_programs_document_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.integer "student_amount"
    t.string "institution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "universities_program_id"
    t.index ["universities_program_id"], name: "index_universities_on_universities_program_id"
  end

  create_table "universities_programs", force: :cascade do |t|
    t.integer "quota"
    t.string "degree"
    t.string "webpage_url"
    t.string "discipline"
    t.string "language"
    t.integer "semesters"
    t.date "deadline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "program_id"
    t.bigint "university_id"
    t.index ["program_id"], name: "index_universities_programs_on_program_id"
    t.index ["university_id"], name: "index_universities_programs_on_university_id"
  end

  create_table "universities_programs_documents", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "program_id"
    t.bigint "document_id"
    t.bigint "universities_program_id"
    t.index ["document_id"], name: "index_universities_programs_documents_on_document_id"
    t.index ["program_id"], name: "index_universities_programs_documents_on_program_id"
    t.index ["universities_program_id"], name: "my_index"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "applications_id"
    t.index ["applications_id"], name: "index_users_on_applications_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "universities_programs"
  add_foreign_key "applications", "users"
  add_foreign_key "applications_documents", "applications"
  add_foreign_key "applications_documents", "documents"
  add_foreign_key "documents", "applications_documents"
  add_foreign_key "documents", "universities_programs_documents"
  add_foreign_key "notifications", "applications"
  add_foreign_key "programs", "universities_programs"
  add_foreign_key "programs", "universities_programs_documents"
  add_foreign_key "universities", "universities_programs"
  add_foreign_key "universities_programs", "programs"
  add_foreign_key "universities_programs", "universities"
  add_foreign_key "universities_programs_documents", "documents"
  add_foreign_key "universities_programs_documents", "programs"
  add_foreign_key "universities_programs_documents", "universities_programs"
  add_foreign_key "users", "applications", column: "applications_id"
end
