class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :student_id, :password, :password_confirmation, :remember_me, :department, :email, :total, :count, :average, :force_rank
  # attr_accessible :title, :body
  #
  validates :student_id, length: { is: 4 }
  validates :total, :presence => true
  validates :count, :presence => true, :numericality => {:greater_than => 1}
  validates :average, :presence => true

  before_validation do
    if self.total > 0 && self.count > 0
      self.average = (self.total.to_f/self.count.to_f).round(2)
    else
      self.average = 0.0
    end
  end

  after_save do
    User.init_class_instance
  end

  def self.init_class_instance
   @@users_rank_map = nil
   @@users = nil
   @@users_rank_ids = nil
   @@users_average_map = nil
   @@users_total_map = nil
  end

  def self.users_orderd_by_rank
    if PharmkonSetting.force_rank?
      @@users_rank_map ||= self.order(:force_rank).all
    else
      @@users_rank_map ||= self.all_user.sort {|a, b|
        a_ra = (a.total_rank + a.average_rank)/2.to_f
        b_ra = (b.total_rank + b.average_rank)/2.to_f
        if a_ra != b_ra
          a_ra <=> b_ra
        else
          a.average_rank <=> b.average_rank
        end
      }
    end
    return @@users_rank_map
  end

  def self.all_user
    @@users ||= User.all
  end

  def apply
    return Apply.find_or_create_by_student_id(self.student_id)
  end

  def rank
    if PharmkonSetting.force_rank?
      return self.force_rank
    else
      @@users_rank_ids ||= self.class.users_orderd_by_rank.map(&:id)
      return (@@users_rank_ids.index(self.id) + 1) rescue nil
    end
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def department_name
    DEPARTMENT.key(self.department)
  end
 
  def average_rank
    @@users_average_map ||= User.order(:average).map{|user| user.average}
    return (@@users_average_map.reverse.index(self.average) + 1) rescue nil
  end

  def total_rank
    @@users_total_map ||= User.order(:total).map{|user| user.total}
    return (@@users_total_map.reverse.index(self.total) + 1) rescue nil
  end

  # allow users to update their accounts without passwords
  def update_without_current_password(params, *options)
    params.delete(:current_password)
 
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
 
    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
 
  DEPARTMENT = {
    "薬科学科" => 1,
    "薬学科"   => 2,
  }
end
