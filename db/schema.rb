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

ActiveRecord::Schema.define(version: 20160724163107) do

  create_table "contacts", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "idade"
    t.string   "estado"
    t.string   "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pesquisas", force: :cascade do |t|
    t.string   "nome_pesquisa"
    t.string   "nome"
    t.integer  "like_nome"
    t.string   "operador_email"
    t.string   "email"
    t.integer  "like_email"
    t.string   "operador_idade"
    t.integer  "idade"
    t.string   "operador_aritmetico_idade"
    t.string   "operador_estado"
    t.string   "estado"
    t.integer  "like_estado"
    t.string   "operador_cargo"
    t.string   "cargo"
    t.integer  "like_cargo"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
