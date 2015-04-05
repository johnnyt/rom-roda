# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rom/roda/version'

Gem::Specification.new do |spec|
  spec.name          = 'rom-roda'
  spec.version       = ROM::Roda::VERSION.dup
  spec.authors       = ['Mark Rickerby']
  spec.email         = ['me@maetl.net']
  spec.summary       = 'Integrate Ruby Object Mapper with Roda'
  spec.homepage      = 'http://rom-rb.org'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rom', '~> 0.6.0', '>= 0.6.1'
  spec.add_runtime_dependency 'inflecto'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '~> 0.28.0'
end
