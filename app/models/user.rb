class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :student_id, :password, :password_confirmation, :remember_me, :department, :email, :total, :count
  # attr_accessible :title, :body
  #
  validates :student_id, length: { is: 4 }
  validates :total, :presence => true
  validates :count, :presence => true, :numericality => {:greater_than => 1}

  def self.users_orderd_by_rank
    @users_rank_map ||= self.all_user.sort {|a, b|
      a_ra = (a.total_rank + a.average_rank)/2.to_f
      b_ra = (b.total_rank + b.average_rank)/2.to_f
      if a_ra != b_ra
        a_ra <=> b_ra
      else
        a.average_rank <=> b.average_rank
      end
    }
    return @users_rank_map
  end

  def self.all_user
    @users ||= User.all.reject {|user| user.count <= 0}
  end

  def apply
    return Apply.find_or_create_by_student_id(self.student_id)
  end

  def rank
    @users_rank_ids ||= self.class.users_orderd_by_rank.map(&:id)
    return (@users_rank_ids.index(self.id) + 1) rescue nil
  end

  def average
    return (self.total.to_f / self.count.to_f).round(2)
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
    @users_average_map ||= self.class.all_user.sort_by {|user| user.average }.map{|user| user.average}
    return (@users_average_map.reverse.index(self.average) + 1) rescue nil
  end

  def total_rank
    @users_total_map ||= self.class.all_user.sort_by {|user| user.total }.map{|user| user.total}
    return (@users_total_map.reverse.index(self.total) + 1) rescue nil
  end

  DEPARTMENT = {
    "薬科学科" => 1,
    "薬学科"   => 2,
  }
end
