class CreateMains < ActiveRecord::Migration
  def self.up
    create_table :mains do |t|
      t.string :sistemas
      t.text :descricao
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :mains
  end
end
