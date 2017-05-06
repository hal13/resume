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

ActiveRecord::Schema.define(version: 20170506103157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "answer_type", limit: 2,  null: false
    t.integer  "type_id",     limit: 2,  null: false
    t.string   "answer_desc", limit: 64, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_desc", limit: 128, null: false
    t.integer  "answer_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["answer_id"], name: "index_questions_on_answer_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "skill_set",  limit: 128, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_careers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "career_from",     limit: 6,                null: false
    t.string   "career_to",       limit: 6,                null: false
    t.integer  "career_position", limit: 2,   default: 0,  null: false
    t.string   "career_desc",     limit: 512,              null: false
    t.string   "career_comment",  limit: 512, default: ""
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["user_id"], name: "index_user_careers_on_user_id", using: :btree
  end

  create_table "user_certificates", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "certified_at",          limit: 6,   null: false
    t.string   "certification_name",    limit: 128, null: false
    t.string   "certification_version", limit: 64
    t.string   "certification_rank",    limit: 64
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["user_id"], name: "index_user_certificates_on_user_id", using: :btree
  end

  create_table "user_competencies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id", limit: 2,  null: false
    t.integer  "answer_id",   limit: 2
    t.string   "answer_text", limit: 64
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_user_competencies_on_user_id", using: :btree
  end

  create_table "user_searches", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "column_for_search", limit: 2048, default: ""
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["user_id"], name: "index_user_searches_on_user_id", using: :btree
  end

  create_table "user_skills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id",    limit: 2, default: 0, null: false
    t.integer  "skill_level", limit: 2
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["user_id"], name: "index_user_skills_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 128, default: "",    null: false
    t.string   "encrypted_password",     limit: 64,  default: "",    null: false
    t.string   "reset_password_token",   limit: 64
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "confirmation_token",     limit: 64
    t.datetime "confirmation_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts"
    t.string   "unlock_token",           limit: 64
    t.datetime "locked_at"
    t.string   "user_name",              limit: 64,  default: "",    null: false
    t.string   "nick_name",              limit: 64,  default: "",    null: false
    t.string   "family_name",            limit: 64
    t.string   "given_name",             limit: 64
    t.string   "phone_number",           limit: 64
    t.string   "image_file_name",        limit: 128
    t.string   "image_file_url",         limit: 512
    t.string   "company_name",           limit: 64,  default: "",    null: false
    t.string   "education",              limit: 256, default: "",    null: false
    t.integer  "age",                    limit: 2,   default: 0
    t.integer  "gender",                 limit: 2,   default: 0
    t.integer  "residential_area",       limit: 2,   default: 0
    t.string   "user_comment",           limit: 512
    t.integer  "user_type",              limit: 2,   default: 0
    t.boolean  "visible",                            default: true
    t.boolean  "deleted",                            default: false
    t.datetime "deleted_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "questions", "answers", name: "answer_type"
  add_foreign_key "user_careers", "users"
  add_foreign_key "user_certificates", "users"
  add_foreign_key "user_competencies", "users"
  add_foreign_key "user_searches", "users"
end
