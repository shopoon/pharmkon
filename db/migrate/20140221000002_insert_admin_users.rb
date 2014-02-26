class InsertAdminUsers < ActiveRecord::Migration
  def self.up
    Admin::User.create! do |admin_user|
      admin_user.name = 'admin'
      admin_user.password = 'admin'
      admin_user.password_confirmation = 'admin'
    end
  end

  def self.down
    Admin::User.delete_all
  end
end
