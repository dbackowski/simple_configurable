# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simple_configurable/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_configurable"
  spec.version       = SimpleConfigurable::VERSION
  spec.authors       = ["Damian Baćkowski"]
  spec.email         = ["damianbackowski@gmail.com"]

  spec.summary       = %q{Simple configuration module for specifying the configuration attributes of a class using a very simple syntax.}
  spec.description   = %q{Simple configuration module for class.}
  spec.homepage      = "https://github.com/dbackowski/simple_configurable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
