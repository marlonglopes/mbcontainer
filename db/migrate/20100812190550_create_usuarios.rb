class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :user
      t.string :nome
      t.integer :nivel
      t.timestamps
    end
  end
  
  def self.down
    drop_table :usuarios
  end
end
