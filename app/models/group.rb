class Group
  @@users = []
  @groups = {}

  def initialize(labo)
    @labo = labo
    @users = []
  end

  def self.all
    return @groups
  end

  def self.get(labo)
    if group = @groups[labo.id]
      return group
    else
      @groups[labo.id] = self.new(labo)  
    end
  end
  
  def self.reload
    init
    create
  end

  def add(user)
    if check(user)
      @users << user
      @@users << user.student_id
      return true
    else
      return false
    end
  end

  def users
    return @users
  end
  
  def users=(value)
    @users = value
  end

  def labo
    return @labo
  end

  private

  def self.init
    @@users = []
    @groups.each do |_, group|
      group.users = []
    end
  end

  def self.create
    users = User.order(:rank).all
    ['first', 'second', 'third'].each do |order|
      users.each do |user|
        labo_id = user.apply.__send__(order)
        group = @groups[labo_id]
        group.add(user)
      end
    end
    pp @groups
  end

  def check(user)
    return false if @@users.include?(user.student_id)
    return false if @users.length >= @labo.total
    @amount = @users.select{|u| u.department == user.department}.length
    return false if @amount >= @labo.department_amount(user.department)
    true
  end

  Labolatory.all.each do |labo|
    @groups[labo.id] = Group.get(labo)
  end
end
