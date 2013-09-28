class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :student_id, :password, :password_confirmation, :remember_me, :department, :email
  # attr_accessible :title, :body

  def apply
    return Apply.find_by_student_id(self.student_id)
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end

  DEPARTMENT = {
    "薬科学科" => 1,
    "薬学科"   => 2,
  }
end
