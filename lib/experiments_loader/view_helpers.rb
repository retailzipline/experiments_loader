module ExperimentsLoader
  module ViewHelpers
    def experiment_javascript_include_tag
      stylesheet_link_tag(experiment_stylesheet_url, media: 'all') if active_experiment?
    end

    def experiment_stylesheet_link_tag
      javascript_include_tag(experiment_javascript_url, defer: true) if active_experiment?
    end

    private

    def experiment_javascript_url
      ExperimentsLoader.configuration.url_pattern % { key: experiment_key, ext: 'js' }
    end

    def experiment_stylesheet_url
      ExperimentsLoader.configuration.url_pattern % { key: experiment_key, ext: 'css' }
    end

    def active_experiment?
      experiment_key.present?
    end

    def experiment_key
      params[:exp]
    end
  end
end
