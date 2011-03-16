module RailsCssThemes
  module Helpers
    autoload :AssetTagHelper, 'rails_css_themes/helpers/asset_tag_helper'
  end

  mattr_accessor :theme
  @@theme = :default

  class << self
    def setup
      yield self
    end
  end
end

class Railtie < ::Rails::Railtie
  config.to_prepare do
    ApplicationHelper.module_eval do
      include RailsCssThemes::Helpers::AssetTagHelper
    end
  end
end
