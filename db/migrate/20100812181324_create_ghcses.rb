class CreateGhcses < ActiveRecord::Migration
  def self.up
    create_table :ghcses do |t|
      t.string :sistema
      t.text :descricao
      t.string :responsavel
      t.timestamps
    end
  end
  
  def self.down
    drop_table :ghcses
  end
end
