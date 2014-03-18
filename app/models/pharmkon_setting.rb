class PharmkonSetting < RailsSettings::CachedSettings
  attr_accessible :var

  def self.force_rank?
    self.force_rank == 1
  end
end
