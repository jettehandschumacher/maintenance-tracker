# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_14_103317) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "task_id", null: false
    t.bigint "user_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_comments_on_task_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "equipment_type"
    t.string "name"
    t.boolean "archived"
    t.boolean "warranty_valid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "service_equipments", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "equipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_service_equipments_on_equipment_id"
    t.index ["service_id"], name: "index_service_equipments_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "extra_info"
    t.boolean "complete_task", default: false
    t.bigint "manager_id"
    t.bigint "technician_id"
    t.bigint "equipment_id", null: false
    t.bigint "waterpoint_id", null: false
    t.bigint "network_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_tasks_on_equipment_id"
    t.index ["manager_id"], name: "index_tasks_on_manager_id"
    t.index ["network_id"], name: "index_tasks_on_network_id"
    t.index ["service_id"], name: "index_tasks_on_service_id"
    t.index ["technician_id"], name: "index_tasks_on_technician_id"
    t.index ["waterpoint_id"], name: "index_tasks_on_waterpoint_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "technician"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "waterpoint_equipments", force: :cascade do |t|
    t.bigint "equipment_id", null: false
    t.bigint "waterpoint_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_waterpoint_equipments_on_equipment_id"
    t.index ["waterpoint_id"], name: "index_waterpoint_equipments_on_waterpoint_id"
  end

  create_table "waterpoints", force: :cascade do |t|
    t.string "name"
    t.string "waterpoint_type"
    t.string "address"
    t.boolean "kiosk"
    t.bigint "network_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["network_id"], name: "index_waterpoints_on_network_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "tasks"
  add_foreign_key "comments", "users"
  add_foreign_key "service_equipments", "equipment"
  add_foreign_key "service_equipments", "services"
  add_foreign_key "tasks", "equipment"
  add_foreign_key "tasks", "networks"
  add_foreign_key "tasks", "services"
  add_foreign_key "tasks", "users", column: "manager_id"
  add_foreign_key "tasks", "users", column: "technician_id"
  add_foreign_key "tasks", "waterpoints"
  add_foreign_key "waterpoint_equipments", "equipment"
  add_foreign_key "waterpoint_equipments", "waterpoints"
  add_foreign_key "waterpoints", "networks"
end
