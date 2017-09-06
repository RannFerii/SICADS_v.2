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

ActiveRecord::Schema.define(version: 20170904234855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battery_banks", force: :cascade do |t|
    t.string   "nomenclatura"
    t.string   "marca"
    t.integer  "banco_baterias_type"
    t.integer  "num_celdas"
    t.string   "capacidad_ah"
    t.string   "volts_totales"
    t.date     "fecha_puesta_servicio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "bays", force: :cascade do |t|
    t.string   "nomenclatura"
    t.integer  "substation_id"
    t.integer  "battery_bank_id"
    t.integer  "reactor_id"
    t.integer  "transformer_id"
    t.integer  "switch_id"
    t.integer  "lightning_arrester_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["battery_bank_id"], name: "index_bays_on_battery_bank_id", using: :btree
    t.index ["lightning_arrester_id"], name: "index_bays_on_lightning_arrester_id", using: :btree
    t.index ["reactor_id"], name: "index_bays_on_reactor_id", using: :btree
    t.index ["substation_id"], name: "index_bays_on_substation_id", using: :btree
    t.index ["switch_id"], name: "index_bays_on_switch_id", using: :btree
    t.index ["transformer_id"], name: "index_bays_on_transformer_id", using: :btree
  end

  create_table "blades", force: :cascade do |t|
    t.string   "nomenclatura"
    t.integer  "cuchilla_type"
    t.integer  "mecanismo_type"
    t.string   "nivel_basico_impulso"
    t.string   "marca"
    t.string   "num_serie"
    t.string   "kv_nom"
    t.string   "amp_nom"
    t.string   "tension_sistema"
    t.date     "fecha_puesta_servicio"
    t.date     "fecha_fabricacion"
    t.integer  "bay_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["bay_id"], name: "index_blades_on_bay_id", using: :btree
  end

  create_table "calibrations", force: :cascade do |t|
    t.date     "fecha_calibracion"
    t.date     "fecha_vencimiento"
    t.integer  "measurement_equipment_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["measurement_equipment_id"], name: "index_calibrations_on_measurement_equipment_id", using: :btree
  end

  create_table "lightning_arresters", force: :cascade do |t|
    t.string   "nomenclatura"
    t.integer  "num_secciones"
    t.integer  "apartarrayos_type"
    t.string   "descarga_ka"
    t.string   "kv_sist"
    t.string   "marca"
    t.string   "num_serie"
    t.date     "fecha_fabricacion"
    t.date     "fecha_puesta_servicio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "measurement_equipments", force: :cascade do |t|
    t.integer  "equipo_medicion_type"
    t.string   "modelo"
    t.string   "marca"
    t.string   "num_serie"
    t.string   "num_inv_eimp"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "phases", force: :cascade do |t|
    t.integer  "fase"
    t.string   "marca"
    t.string   "num_serie"
    t.date     "fecha_fabricacion"
    t.string   "relacion_transformacion"
    t.string   "capacidad_transformacion"
    t.string   "capacitancia_total"
    t.integer  "masa_embarque"
    t.integer  "esquema_nucleo"
    t.integer  "total_aceite"
    t.string   "sistema_enfriamiento"
    t.boolean  "mampara"
    t.integer  "num_taps"
    t.string   "sistema_contra_incendios"
    t.string   "fosa_captadora_aceite"
    t.string   "tension_sistema"
    t.string   "clase_exactitud"
    t.string   "tipo_expancion_aceite"
    t.string   "tipo_envolvente"
    t.string   "mva"
    t.date     "fecha_puesta_servicio"
    t.integer  "transformer_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["transformer_id"], name: "index_phases_on_transformer_id", using: :btree
  end

  create_table "react_mouthpieces", force: :cascade do |t|
    t.string   "marca"
    t.string   "tipo"
    t.string   "num_serie"
    t.string   "kv"
    t.string   "amp"
    t.date     "fecha_fabricacion"
    t.integer  "reactor_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["reactor_id"], name: "index_react_mouthpieces_on_reactor_id", using: :btree
  end

  create_table "reactors", force: :cascade do |t|
    t.string   "nomenclatura"
    t.integer  "reactor_type"
    t.string   "marca"
    t.string   "num_serie"
    t.integer  "mva"
    t.string   "clase_enf"
    t.integer  "kv_nom_at"
    t.integer  "kv_nom_bt"
    t.integer  "kv_nom_terciario"
    t.date     "fecha_fabricacion"
    t.date     "fecha_puesta_servicio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "substations", force: :cascade do |t|
    t.string   "nombre_subestacion"
    t.string   "subestacion_abbr"
    t.string   "direccion"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "extencion"
    t.string   "encargado_nombre"
    t.string   "encargado_apellidos"
    t.string   "capacidad"
    t.date     "fecha_puesta_servicio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "switches", force: :cascade do |t|
    t.string   "nomenclatura"
    t.integer  "interruptor_type"
    t.integer  "mecanismo_type"
    t.string   "marca"
    t.string   "voltaje_control"
    t.string   "tension_fuerza"
    t.string   "tension_sistema"
    t.string   "num_serie"
    t.string   "kv_nom"
    t.string   "amp_nom"
    t.string   "capacidad_interruptiva"
    t.string   "nivel_basico_impulso"
    t.string   "medio_ext"
    t.date     "fecha_fabricacion"
    t.date     "fecha_puesta_servicio"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tap_changers", force: :cascade do |t|
    t.string   "marca"
    t.string   "tipo"
    t.string   "serie"
    t.string   "num_pasos"
    t.integer  "phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_tap_changers_on_phase_id", using: :btree
  end

  create_table "trans_mouthpieces", force: :cascade do |t|
    t.string   "marca"
    t.string   "tipo"
    t.string   "num_serie"
    t.string   "kv"
    t.string   "amp"
    t.date     "fecha_fabricacion"
    t.integer  "phase_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["phase_id"], name: "index_trans_mouthpieces_on_phase_id", using: :btree
  end

  create_table "transformers", force: :cascade do |t|
    t.string   "nomenclatura"
    t.integer  "transformador_type"
    t.string   "phase_type"
    t.string   "numero_activo_fijo"
    t.date     "fecha_puesta_servicio"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "rpe",                    default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.integer  "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "windings", force: :cascade do |t|
    t.integer  "devanado_type"
    t.string   "devanado_kv"
    t.string   "porcentaje_z"
    t.string   "z_mva"
    t.string   "z_kv"
    t.integer  "conexion_type"
    t.integer  "phase_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["phase_id"], name: "index_windings_on_phase_id", using: :btree
  end

  add_foreign_key "bays", "battery_banks"
  add_foreign_key "bays", "lightning_arresters"
  add_foreign_key "bays", "reactors"
  add_foreign_key "bays", "substations"
  add_foreign_key "bays", "switches"
  add_foreign_key "bays", "transformers"
  add_foreign_key "blades", "bays"
  add_foreign_key "calibrations", "measurement_equipments"
  add_foreign_key "phases", "transformers"
  add_foreign_key "react_mouthpieces", "reactors"
  add_foreign_key "tap_changers", "phases"
  add_foreign_key "trans_mouthpieces", "phases"
  add_foreign_key "windings", "phases"
end
