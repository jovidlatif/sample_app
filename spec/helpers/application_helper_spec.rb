require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "Should include the page title" do
      full_title("").should =~ //
    end

    it "Should include the base title" do
      full_title("").should =~ /^/
    end

    it "Should not include a bar for the home page" do
      full_title("").should_not =~ /\|/
    end
  end
end
