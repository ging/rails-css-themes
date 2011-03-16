module RailsCssThemes
  module Helpers
    module AssetTagHelper
      # Replaces each source to include the configured theme
      def stylesheet_link_tag(*sources)
        options = sources.extract_options!
        sources.map!{ |s| File.join(RailsCssThemes.theme.to_s, s) }

        super *sources.push(options)
      end
    end
  end
end

ActionView::Helpers::AssetTagHelper.class_eval do
  include RailsCssThemes::Helpers::AssetTagHelper
end
