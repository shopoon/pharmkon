class Admin::User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :validatable

  devise :authentication_keys => [:name]
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
