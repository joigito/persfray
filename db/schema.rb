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

ActiveRecord::Schema.define(version: 2019_09_17_205544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistances", force: :cascade do |t|
    t.bigint "personal_id", null: false
    t.date "fecha_desde"
    t.date "fecha_hasta"
    t.string "movito"
    t.boolean "con_aviso"
    t.boolean "justificado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personal_id"], name: "index_assistances_on_personal_id"
  end

  create_table "employes", force: :cascade do |t|
    t.string "documento"
    t.string "apellido_y_nombre"
    t.string "fec_nacim"
    t.date "fec_ingreso"
    t.boolean "docente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inasistencia", force: :cascade do |t|
    t.bigint "personal_id", null: false
    t.date "fechadesde"
    t.date "fechahasta"
    t.string "causa"
    t.boolean "aviso"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personal_id"], name: "index_inasistencia_on_personal_id"
  end

  create_table "movimientos", force: :cascade do |t|
    t.bigint "personal_id", null: false
    t.date "fecha_desde"
    t.date "fecha_hasta"
    t.string "motivo"
    t.boolean "con_aviso"
    t.boolean "justificado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["personal_id"], name: "index_movimientos_on_personal_id"
  end

  create_table "personals", force: :cascade do |t|
    t.string "documento"
    t.string "apeynom"
    t.date "fecnac"
    t.date "fecing"
    t.string "domic"
    t.boolean "activo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assistances", "personals"
  add_foreign_key "inasistencia", "personals"
  add_foreign_key "movimientos", "personals"
end
