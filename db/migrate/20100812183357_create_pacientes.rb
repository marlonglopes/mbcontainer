class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes do |t|
      t.string :nome
      t.string :sobrenome
      t.string :mae
      t.date :nascimento
      t.timestamps
    end
  end
  
  def self.down
    drop_table :pacientes
  end
end
