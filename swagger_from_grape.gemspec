lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "swagger_from_grape/version"

Gem::Specification.new do |spec|
  spec.name          = "swagger_from_grape"
  spec.version       = SwaggerFromGrape::VERSION
  spec.authors       = ["Juan Carlos García del Canto"]
  spec.email         = ["jugade92@gmail.com"]

  spec.summary       = %q{Gem that generates swagger specification files from Grape::API controllers}
  spec.homepage      = "https://github.com/jcagarcia/swagger-from-grape"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jcagarcia/swagger-from-grape"
  spec.metadata["changelog_uri"] = "https://github.com/jcagarcia/swagger-from-grape/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
