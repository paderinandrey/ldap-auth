# frozen_string_literal: true

require 'bundler/setup'
require 'simplecov'

SimpleCov.start do
  add_filter 'spec/'
  add_filter 'vendor/'
end

require 'ldap-auth'

Adauth.logger = Logger.new('/dev/null')
