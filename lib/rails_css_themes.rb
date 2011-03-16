module RailsCssThemes
  mattr_accessor :theme
  @@theme = :default

  class << self
    def setup
      yield self
    end
  end
end
