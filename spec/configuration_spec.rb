require 'spec_helper'

describe WorkingHours do

  context "with configuration" do
    context "should configure" do
      it "open"
      it "close"
    end
  end

  context "without configuration" do
    describe "should return defaults" do
      it "for open" do
        WorkingHours.config.open.should eq(9)
      end

      it "for closed" do
        WorkingHours.config.closed.should eq(17)
      end

      it "for timezone" do
        WorkingHours.config.time_zone.should eq("Eastern Time (US & Canada)")
      end
    end
  end

end
