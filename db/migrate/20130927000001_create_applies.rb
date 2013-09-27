class CreateApplies < ActiveRecord::Migration
  
  def change
    create_table :applies do |t|
      t.string :student_id
      t.string :first, default: nil
      t.string :second, default: nil
      t.string :third, default: nil
      t.string :forth, default: nil
    end
  end
end
