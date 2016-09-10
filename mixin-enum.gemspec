# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mixin/enum/version'

Gem::Specification.new do |spec|
  spec.name          = 'mixin-enum'
  spec.version       = Mixin::Enum::VERSION
  spec.authors       = ['Ryo Yoneyama (@yulii)']
  spec.email         = ['yone.info@gmail.com']

  spec.summary       = 'Provides a module constant for defining enumerations'
  spec.homepage      = 'https://github.com/yulii/mixin-enum'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '0.42.0'
end
