require "working_hours/version"

module WorkingHours

  @@time_zone = "Eastern Time (US & Canada)"
  @@open = 9
  @@close = 17

  def self.after_hours?(now=DateTime.now.in_time_zone(@@time_zone))
    !now.hour.between?(@@open,@@close)
  end

  def self.weekend?(now=DateTime.now.in_time_zone(@@time_zone))
    (now.friday? && after_hours?(now)) || now.saturday? || now.sunday?
  end

end
