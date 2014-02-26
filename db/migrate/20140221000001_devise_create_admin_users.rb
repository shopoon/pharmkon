class DeviseCreateAdminUsers < ActiveRecord::Migration
  def change
    create_table(:admin_users) do |t|
      ## Database authenticatable
      t.string :name,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Rememberable
      t.datetime :remember_created_at

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :admin_users, :name,                :unique => true
    # add_index :admin_users, :confirmation_token,   :unique => true
    # add_index :admin_users, :unlock_token,         :unique => true
  end
end
