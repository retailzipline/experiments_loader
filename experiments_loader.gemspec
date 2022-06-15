require_relative 'lib/experiments_loader/version'

Gem::Specification.new do |spec|
  spec.name          = "experiments_loader"
  spec.version       = ExperimentsLoader::VERSION
  spec.authors       = ["Jeremy Baker, Macarena Poo"]
  spec.email         = ["jeremy@zipline.inc, macarena@zipline.inc"]

  spec.summary       = %q{An extension to ActionView that automatically loads a remote experiement}
  spec.description   = %q{An extension to ActionView that automatically loads a remote experiement}
  spec.homepage      = "https://github.com/retailzipline"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/retailzipline/experiments_loader"
  spec.metadata["changelog_uri"] = "https://github.com/retailzipline/experiments_loader/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview", ">= 4"
end
