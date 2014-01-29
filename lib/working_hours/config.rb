module WorkingHours
  class Config
    attr_accessor :open
    attr_accessor :close
    attr_accessor :time_zone

    def initialize
      self.time_zone = "Eastern Time (US & Canada)"
      self.open = 9
      self.close = 17
    end
  end
end
