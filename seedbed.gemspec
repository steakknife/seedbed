# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = %q{seedbed}
  s.version = IO.readlines("VERSION")[0].strip
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Barry Allard", "Spencer Markowski", "The Able Few", "David Somers"]
  s.description = %q{Manage seeds in individual files in db/seeds/}
  s.email = ["barry dot allard at gmail dot com", "spencer.markowski@gmail.com"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = `git ls-files -z`.split("\0")
  s.homepage = %q{https://github.com/steakknife/seedbed}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Quick DSL to allow easier management of seeds}
  s.test_files = []
  s.add_development_dependency "bundler"
end
