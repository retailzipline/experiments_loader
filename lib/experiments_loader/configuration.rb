module ExperimentsLoader
  class Configuration
    DEFAULT_URL_PATTERN = '/experiment/%<key>s.%<ext>s'

    attr_accessor :url_pattern

    def initialize
      @url_pattern = DEFAULT_URL_PATTERN
    end
  end
end
