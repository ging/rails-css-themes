class RailsCssThemes::InstallGenerator < Rails::Generators::Base #:nodoc:
  source_root File.expand_path('../templates', __FILE__)

  def create_initializer_file
    copy_file 'initializer.rb', 'config/initializers/rails_css_themes.rb'
  end
end
