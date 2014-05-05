# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hiera/config/version'

Gem::Specification.new do |spec|
  spec.name          = "hiera-config"
  spec.version       = Hiear::Config::VERSION
  spec.authors       = ["Carl Pulley"]
  spec.email         = ["carlp@cakesolutions.net"]
  spec.summary       = %q{Vagrant plugin allowing the hiera gem to be accessed within a Vagrantfile.}
  spec.description   = %q{Vagrant plugin allowing the hiera gem to be accessed within a Vagrantfile.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "hiera"
end