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
    @groups = {}
    @@users = []
    Labolatory.all.each do |labo|
      @groups[labo.id] = Group.get(labo)
    end
    @groups.each do |_, group|
      group.users = []
    end
  end

  def self.create
    users = User.users_orderd_by_rank
    users.each do |user|
      ['first', 'second', 'third'].each do |order|
        labo_id = user.apply.__send__(order)
        next if labo_id.nil?
        group = @groups[labo_id]
        next if group.nil?
        break if group.add(user)
      end
    end
  end

  def check(user)
    return false if @@users.include?(user.student_id)
    return false if @users.length >= @labo.total
    @amount = @users.select{|u| u.department == user.department}.length
    return false if @amount >= @labo.department_amount(user.department)
    true
  end

end
