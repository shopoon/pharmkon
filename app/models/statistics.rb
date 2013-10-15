class Statistics
  def self.average_map
    @average_map ||= {:all => self.average, :yakka => self.yakka_average, :yaku => self.yaku_average}
  end

  def self.average
    @average ||= (self.total.to_f/self.count.to_f).round(2)
  end

  def self.total
    @total ||= User.sum(:average)
  end

  def self.count
    @count ||= User.count
  end

  def self.yakka_average
    return 0 if self.yakka_count <= 0
    return @yakka_average ||= (self.yakka_total.to_f/self.yakka_count.to_f).round(2) 
  end

  def self.yaku_average
    return 0 if self.yaku_count <= 0
    return @yaku_average ||= (self.yaku_total.to_f/self.yaku_count.to_f).round(2) 
  end

  def self.yakka_total
    @yakka_total ||= User.where(:department => User::DEPARTMENT["薬科学科"]).sum(:average)
  end

  def self.yaku_total
    @yaku_total ||= User.where(:department => User::DEPARTMENT["薬学科"]).sum(:average)
  end

  def self.yakka_count
    @yakka_count ||= User.where(:department => User::DEPARTMENT["薬科学科"]).count
  end
 
  def self.yaku_count
    @yaku_count ||= User.where(:department => User::DEPARTMENT["薬学科"]).count
  end
end
