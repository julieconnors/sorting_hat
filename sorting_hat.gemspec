require_relative 'lib/sorting_hat/version'

Gem::Specification.new do |spec|
  spec.name          = "sorting_hat"
  spec.version       = SortingHat::VERSION
  spec.authors       = ["julieconnors"]
  spec.email         = ["juliana.g.connors@gmail.com"]

  spec.summary       = %q{Sorting hat gem for CLI project.}
  spec.description   = %q{This gem sorts users into Hogwarts houses based on user input.}
  spec.homepage      = "http://zonnebloemdigital.com/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "http://zonnebloemdigital.com/"
  spec.metadata["source_code_uri"] = "http://zonnebloemdigital.com/"
  spec.metadata["changelog_uri"] = "http://zonnebloemdigital.com/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "httparty"
end
