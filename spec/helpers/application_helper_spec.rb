require 'spec_helper'

describe ApplicationHelper do
  describe "#stylesheet_link_tag" do
    it "should include default in route" do
      helper.stylesheet_link_tag('example').should include('href="/stylesheets/default/example.css"')
    end

    context "with different theme" do
      before do
        RailsCssThemes.theme = 'other'
      end

      it "should include other in route" do
        helper.stylesheet_link_tag('example').should include('href="/stylesheets/other/example.css"')
      end
    end
  end
end
