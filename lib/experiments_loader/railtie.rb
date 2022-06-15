require 'experiments_loader/view_helpers'

module ExperimentsLoader
  class Railtie < Rails::Railtie
    initializer "experiments_loader.view_helpers" do
      ActiveSupport.on_load(:action_view) { include ExperimentsLoader::ViewHelpers }
    end
  end
end
