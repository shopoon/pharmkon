class PharmkonSetting < RailsSettings::CachedSettings
  attr_accessible :var

  self.save_default(:force_rank, 0)

  after_save do
    User.init_class_instance
  end

  def self.force_rank?
    self.force_rank == 1
  end
end
