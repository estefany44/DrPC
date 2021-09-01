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

ActiveRecord::Schema.define(version: 2021_09_01_023314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.date "fechas"
    t.time "hora_inicio"
    t.time "hora_fin"
    t.boolean "status"
    t.bigint "reserva_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reserva_id"], name: "index_agendas_on_reserva_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "description"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "equipos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "diagnostic"
    t.string "solution"
    t.integer "price"
    t.date "delivery_date"
    t.string "status"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_orders_on_appointment_id"
  end

  create_table "ots", force: :cascade do |t|
    t.string "diagnostico"
    t.string "solucion"
    t.integer "valor"
    t.date "fecha_entrega"
    t.bigint "marca_id", null: false
    t.bigint "equipo_id", null: false
    t.string "serie"
    t.boolean "status"
    t.bigint "reserva_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipo_id"], name: "index_ots_on_equipo_id"
    t.index ["marca_id"], name: "index_ots_on_marca_id"
    t.index ["reserva_id"], name: "index_ots_on_reserva_id"
    t.index ["user_id"], name: "index_ots_on_user_id"
  end

  create_table "pagos", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.string "transaccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "status"
    t.string "problemas"
    t.integer "pago_diagnosticos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_reservas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "rut_number"
    t.integer "role"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "agendas", "reservas"
  add_foreign_key "appointments", "users"
  add_foreign_key "orders", "appointments"
  add_foreign_key "ots", "equipos"
  add_foreign_key "ots", "marcas"
  add_foreign_key "ots", "reservas"
  add_foreign_key "ots", "users"
  add_foreign_key "reservas", "users"
end
