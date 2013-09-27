class Group
  @groups = {}

  attr_reader :labo, :users

  def initialize(labo)
    @labo = labo
    @users = []
  end

  def self.get(labo)
    if @group = @groups[labo.id]
      return @group
    else
      @groups[labo.id] = self.new(labo)  
    end
  end

  def add(user)
    if check(user)
      @users << user
    end
  end

  def check(user)
    return false if @users.length >= @labo.total
    @amount = @users.select{|u| u.department == user.department}.length
    return false if @amount >= @labo.department_amount(user.department)
    true
  end

  Labolatory.all.each do |labo|
    @groups[labo.id] = Group.new(labo)
  end
end
