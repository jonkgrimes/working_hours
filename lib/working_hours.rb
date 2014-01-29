require "working_hours/version"
require "working_hours/config"

module WorkingHours

  @@time_zone = "Eastern Time (US & Canada)"
  @@open = 9
  @@close = 17

  class << self

    def config=(data)
      @config = data
    end

    def config
      @config ||= Config.new
    end

  end

  def self.open?(now=DateTime.now.in_time_zone(@@time_zone))
    now.hour.between?(@@open,@@close) && !weekend?(now)
  end

  def self.closed?(now=DateTime.now.in_time_zone(@@time_zone))
    !self.open?(now)
  end

  def self.after_hours?(now=DateTime.now.in_time_zone(@@time_zone))
    !now.hour.between?(@@open,@@close)
  end

  def self.weekend?(now=DateTime.now.in_time_zone(@@time_zone))
    (now.friday? && after_hours?(now)) || now.saturday? || now.sunday?
  end

end
