# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = %q{seedbed}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Spencer Markowski", "The Able Few", "David Somers"]
  s.date = %q{2014-04-09}
  s.description = %q{Manage seeds in individual files in db/seeds/}
  s.email = %q{spencer.markowski@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/seedbed.rb",
    "lib/seedbed/railtie.rb",
    "lib/tasks/tasks.rake",
    "seedbed.gemspec"
  ]
  s.homepage = %q{http://github.com/esmarkowski/seedbed}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Quick DSL to allow easier management of seeds}
  s.test_files = []
  s.add_development_dependency "bundler"
end

