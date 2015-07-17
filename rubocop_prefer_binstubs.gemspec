# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_prefer_binstubs/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop_prefer_binstubs"
  spec.version       = RubocopPreferBinstubs::VERSION
  spec.authors       = ["Max Jacobson"]
  spec.email         = ["max@hardscrabble.net"]

  spec.summary       = %q{binstubs are great!}
  spec.description   = %q{if a string mentions bundle exec, it probably ought to mention bin/}
  spec.homepage      = "https://github.com/maxjacobson/rubocop_prefer_binstubs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 0.32"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
