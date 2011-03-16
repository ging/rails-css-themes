module RailsCssThemes
  mattr_accessor :theme
  @@theme = :default

  class << self
    def setup
      yield self
    end
  end
end

require 'rails_css_themes/helpers/asset_tag_helper'
