require "working_hours/version"
require "working_hours/config"

module WorkingHours

  class << self

    def config=(data)
      @config = data
    end

    def config
      @config ||= Config.new
    end

    def configure(&proc)
      @config ||= Config.new
      yield @config
    end

  end

  def self.open?(now=DateTime.now.in_time_zone(self.config.time_zone))
    now.hour.between?(self.config.open,self.config.close) && !weekend?(now)
  end

  def self.closed?(now=DateTime.now.in_time_zone(self.config.time_zone))
    !self.open?(now)
  end

  def self.after_hours?(now=DateTime.now.in_time_zone(self.config.time_zone))
    !now.hour.between?(self.config.open,self.config.close)
  end

  def self.weekend?(now=DateTime.now.in_time_zone(self.config.time_zone))
    (now.friday? && after_hours?(now)) || now.saturday? || now.sunday?
  end

  def self.hours
    self.config.open..self.config.close
  end

end
