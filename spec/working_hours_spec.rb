require 'spec_helper'

describe WorkingHours do

  describe ".weekend?" do
    context "on the weekend" do
      it "should return true" do
        time = DateTime.new(2013,10,11,19,0,0,"-6")
        WorkingHours.weekend?(time).should be_true
      end
    end

    context "during business hours on a weekday" do
      it "should return false" do
        time = DateTime.new(2013,10,11,10,0,0,"-6")
        WorkingHours.weekend?(time).should be_false
      end
    end
  end

  describe ".after_hours?" do
    context "before the business opens" do
      context "on a weekday" do
        it "should return true" do
          time = DateTime.new(2013,10,11,7,0,0,"-6")
          WorkingHours.after_hours?(time).should be_true
        end
      end
    end

    context "during business hours" do
      context "on a weekday" do
        it "should return false" do
          time = DateTime.new(2013,10,11,10,0,0,"-6")
          WorkingHours.after_hours?(time).should be_false
        end
      end
    end

    context "after the business closes" do
      context "on a weekday" do
        it "should return true" do
          time = DateTime.new(2013,10,11,19,0,0,"-6")
          WorkingHours.after_hours?(time).should be_true
        end
      end
    end
  end

end
