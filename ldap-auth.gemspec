# frozen_string_literal: true
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ldap-auth/version'

Gem::Specification.new do |spec|
  spec.name          = 'ldap-auth'
  spec.version       = LdapAuth::VERSION
  spec.authors       = ['paderinandrey']
  spec.email         = ['paderinandrey2011@gmail.com']
  spec.summary       = 'LDAP Authentication for Rails App'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.3'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  
  spec.add_dependency 'net-ldap'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.58'
  spec.add_development_dependency 'simplecov', '~> 0.16'
end
