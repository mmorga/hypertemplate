def is_ruby_19?
  RUBY_VERSION == '1.9.1' or RUBY_VERSION == '1.9.2'
end

require 'test/unit'
require 'rubygems'
require 'methodize'

begin
  require 'ruby-debug'
rescue LoadError
  # NOP, ignore
end

require File.dirname(__FILE__) + '/../lib/hypertemplate'
