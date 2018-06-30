lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trailblazer/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "trailblazer-rails"
  spec.version       = Trailblazer::Rails::VERSION
  spec.authors       = ["Nick Sutterer"]
  spec.email         = ["apotonick@gmail.com"]

  spec.summary       = %q{Convenient Rails support for Trailblazer.}
  spec.homepage      = "http://trailblazer.to/gems/trailblazer/2.0/rails.html"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 5.0.7"
  spec.add_dependency "trailblazer", ">= 2.1.0.beta1", "< 2.2.0"
  spec.add_dependency "trailblazer-loader", ">= 0.1.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
end
