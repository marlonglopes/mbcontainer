# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100812190550) do

  create_table "ghcses", :force => true do |t|
    t.string   "sistema"
    t.text     "descricao"
    t.string   "responsavel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mains", :force => true do |t|
    t.string   "sistemas"
    t.text     "descricao"
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pacientes", :force => true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "mae"
    t.date     "nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "user"
    t.string   "nome"
    t.integer  "nivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
