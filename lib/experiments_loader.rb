require "experiments_loader/configuration"
require "experiments_loader/version"

module ExperimentsLoader
  class Error < StandardError; end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure(&block)
    yield(configuration)
  end
end

require 'experiments_loader/railtie' if defined?(Rails)
