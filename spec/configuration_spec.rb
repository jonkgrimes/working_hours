require 'spec_helper'

describe WorkingHours do

  context "with configuration" do
    before do
      WorkingHours.config = WorkingHours::Config.new
      WorkingHours.configure do |config|
        config.open = 7
        config.close = 19
        config.time_zone = "Central Time (US & Canada)"
      end
    end

    context "should configure" do
      it "open" do
        WorkingHours.config.open.should eq(7)
      end

      it "close" do
        WorkingHours.config.close.should eq(19)
      end

      it "time_zone" do
        WorkingHours.config.time_zone.should eq("Central Time (US & Canada)")
      end
    end
  end

  context "without configuration" do
    before do
      WorkingHours.config = WorkingHours::Config.new
    end

    describe "should return defaults" do
      it "for open" do
        WorkingHours.config.open.should eq(9)
      end

      it "for close" do
        WorkingHours.config.close.should eq(17)
      end

      it "for timezone" do
        WorkingHours.config.time_zone.should eq("Eastern Time (US & Canada)")
      end
    end
  end

end
