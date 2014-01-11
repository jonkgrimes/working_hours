require 'spec_helper'

describe WorkingHours do
  describe ".weekend?" do
    context "on the weekend" do
      it "should return true" do
        time = DateTime.new(2013,10,11,19)
        WorkingHours.weekend?(time).should be_true
      end
    end
  end

  describe ".after_hours?" do
    context "before the business opens" do
      context "on a weekday" do
        it "should return true"  
      end

      context "on a weekend" do
        it "should return true"
      end
    end
  end

end
