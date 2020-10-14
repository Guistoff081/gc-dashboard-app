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

ActiveRecord::Schema.define(version: 20201014152127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.bigint "cpf"
    t.string "telefone"
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price"
    t.string "marca"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "vendas", force: :cascade do |t|
    t.decimal "valor_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "clientes_id"
    t.bigint "produtos_id"
    t.index ["clientes_id"], name: "index_vendas_on_clientes_id"
    t.index ["produtos_id"], name: "index_vendas_on_produtos_id"
  end

  add_foreign_key "vendas", "clientes", column: "clientes_id"
  add_foreign_key "vendas", "produtos", column: "produtos_id"
end
