class CreateApplies < ActiveRecord::Migration
  
  def change
    create_table :applies do |t|
      t.string :student_id
      t.integer :first, default: nil
      t.integer :second, default: nil
      t.integer :third, default: nil
    end
  end
end
