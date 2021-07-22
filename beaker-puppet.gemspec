# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'beaker-puppet/version'

Gem::Specification.new do |s|
  s.name        = "beaker-puppet"
  s.version     = BeakerPuppet::VERSION
  s.authors     = ["Vox Pupuli"]
  s.email       = ["voxpupuli@groups.io"]
  s.homepage    = "https://github.com/voxpupuli/beaker-puppet"
  s.summary     = %q{Beaker's Puppet DSL Extension Helpers!}
  s.description = %q{For use for the Beaker acceptance testing tool}
  s.license     = 'Apache2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Testing dependencies
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rspec-its'
  s.add_development_dependency 'fakefs', '>= 0.6', '< 2.0'
  s.add_development_dependency 'rake', '~> 13.0'

  # Acceptance Testing Dependencies
  s.add_development_dependency 'beaker-vmpooler'

  # Documentation dependencies
  s.add_development_dependency 'yard'
  s.add_development_dependency 'thin'

  # Run time dependencies
  s.add_runtime_dependency 'beaker', '~> 4.1'
  s.add_runtime_dependency 'in-parallel', '~> 0.1'
  s.add_runtime_dependency 'oga'

end

