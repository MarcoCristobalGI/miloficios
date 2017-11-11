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

ActiveRecord::Schema.define(version: 20171111134207) do

  create_table "anuncios", force: :cascade do |t|
    t.string   "titulo"
    t.string   "contenido"
    t.date     "fecha"
    t.string   "requisitos"
    t.integer  "vacante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "name"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contactos", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "correo"
    t.string   "direccion"
    t.integer  "telefono"
    t.string   "ocupacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controllers", force: :cascade do |t|
    t.string   "empleador"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleadors", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "oficio"
    t.string   "telefono"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["post_id"], name: "index_posts_on_post_id"

  create_table "trabajadors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "oficio"
    t.string   "telefono"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
