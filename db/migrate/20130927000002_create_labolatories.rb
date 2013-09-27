class CreateLabolatories < ActiveRecord::Migration
  
  def change
    create_table :labolatories do |t|
      t.string  :name
      t.integer :yaku, default: 0
      t.integer :yakka, default: 0
      t.integer :total, default: 0
    end
  end
end
