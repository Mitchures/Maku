RUBY_VERSION =~ /(\d+.\d+)/
require "mysql2/#{$1}/mysql2"
