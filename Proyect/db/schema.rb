# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 0) do

  create_table "categorias", force: :cascade do |t|
    t.string "nombre", limit: 100
  end

  create_table "comentarios", force: :cascade do |t|
    t.string  "comentario", limit: 1000, null: false
    t.integer "idProducto", limit: 4,    null: false
    t.integer "idUsuario",  limit: 4,    null: false
    t.date    "fecha",                   null: false
  end

  add_index "comentarios", ["idProducto"], name: "idProducto_idx", using: :btree
  add_index "comentarios", ["idUsuario"], name: "idUsuario_idx", using: :btree

  create_table "decripcionen", force: :cascade do |t|
    t.string "description", limit: 2000, null: false
  end

  add_index "decripcionen", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "lineapedidos", force: :cascade do |t|
    t.integer "idPedido",       limit: 4,   null: false
    t.string  "nombreProducto", limit: 255, null: false
    t.float   "precioProducto", limit: 53,  null: false
    t.integer "cantidad",       limit: 4,   null: false
  end

  add_index "lineapedidos", ["idPedido"], name: "idPeidod_idx", using: :btree

  create_table "pedidos", force: :cascade do |t|
    t.date    "fecha"
    t.integer "idUsuario", limit: 4
  end

  add_index "pedidos", ["idUsuario"], name: "idUsuarioPedido", using: :btree
  add_index "pedidos", ["idUsuario"], name: "idUsuario_idx", using: :btree

  create_table "productos", force: :cascade do |t|
    t.string  "nombre",      limit: 255
    t.integer "idCategoria", limit: 4
    t.float   "precio",      limit: 53
    t.string  "descripcion", limit: 1000
    t.string  "imagen",      limit: 200,                  null: false
    t.integer "ventas",      limit: 4,    default: 0,     null: false
    t.boolean "recomendado", limit: 1,    default: false, null: false
  end

  add_index "productos", ["idCategoria"], name: "idCategoria_idx", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string "rol", limit: 45, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string  "email",           limit: 255, null: false
    t.string  "password",        limit: 10,  null: false
    t.string  "nombre",          limit: 12,  null: false
    t.string  "primerApellido",  limit: 12,  null: false
    t.string  "segundoApellido", limit: 12,  null: false
    t.integer "telefono",        limit: 4,   null: false
    t.string  "direccion",       limit: 255, null: false
    t.integer "idRol",           limit: 4,   null: false
  end

  add_index "usuarios", ["email"], name: "email_UNIQUE", unique: true, using: :btree
  add_index "usuarios", ["idRol"], name: "idRol_idx", using: :btree

  add_foreign_key "comentarios", "productos", column: "idProducto", name: "idProducto", on_delete: :cascade
  add_foreign_key "comentarios", "usuarios", column: "idUsuario", name: "idUsuario", on_delete: :cascade
  add_foreign_key "decripcionen", "productos", column: "id", name: "idEng", on_update: :cascade, on_delete: :cascade
  add_foreign_key "lineapedidos", "pedidos", column: "idPedido", name: "idPedido"
  add_foreign_key "productos", "categorias", column: "idCategoria", name: "idCategoria", on_delete: :cascade
  add_foreign_key "usuarios", "roles", column: "idRol", name: "idRol", on_delete: :cascade
end
