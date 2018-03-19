# -*- encoding: utf-8 -*-
# stub: mysql2 0.4.10 x64-mingw32 lib

Gem::Specification.new do |s|
  s.name = "mysql2".freeze
  s.version = "0.4.10"
  s.platform = "x64-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian Lopez".freeze, "Aaron Stone".freeze]
  s.date = "2017-11-14"
  s.email = ["seniorlopez@gmail.com".freeze, "aaron@serendipity.cx".freeze]
  s.homepage = "http://github.com/brianmario/mysql2".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\n======================================================================================================\n\n  You've installed the binary version of mysql2.\n  It was built using MySQL Connector/C version 6.1.11.\n  It's recommended to use the exact same version to avoid potential issues.\n\n  At the time of building this gem, the necessary DLL files were retrieved from:\n  http://cdn.mysql.com/Downloads/Connector-C/mysql-connector-c-6.1.11-win32.zip\n\n  This gem *includes* vendor/libmysql.dll with redistribution notice in vendor/README.\n\n======================================================================================================\n\n".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "A simple, fast Mysql library for Ruby, binding to libmysql".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version
end
