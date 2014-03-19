class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :force_rank, :integer, :default => nil
  end
end
