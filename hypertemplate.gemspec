# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hypertemplate/version"

require File.join(File.dirname(__FILE__), "lib", "hypertemplate", "version.rb")

Gem::Specification.new do |s|
  s.name          = "hypertemplate"
  s.version       = Hypertemplate::VERSION.to_s
  s.platform      = Gem::Platform::RUBY
  s.summary       = "A template engine that generates hypermedia enbabled media types representations"

  s.author        = "Guilherme Silveira & Hypertemplate & Tokamak & Restfulie team"
  s.email         = "restfulie@googlegroups.com"
  s.homepage      = "http://github.com/caelum/hypertemplate"

  s.require_paths = ['lib']
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('json')
  s.add_dependency('nokogiri')

  s.add_development_dependency('methodize')
  s.add_development_dependency('rack',"~>1.2")
  s.add_development_dependency('rack-test')
  s.add_development_dependency('rack-conneg')
  s.add_development_dependency('tilt',"~>1.2")
  s.add_development_dependency('sinatra',"~>1.1")
  s.add_development_dependency('rails',">=3.1.1")
end
