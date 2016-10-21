# seedbed

Manage groups of seeds

## Installation

### Using Bundler (preferred)

```ruby
source 'https://rubygems.org'
# bundler < 2.x security
git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }
# ...
gem 'seedbed', github: 'steakknife/seedbed'
```

### Using `specific_install`

1. `gem install specific_install`
1. `gem specific_install https://github.com/steakknife/seedbed`

## Usage

1. `mkdir -p db/seeds`
1.  Place `*.rb` seed files in this directory.
1.  In `seeds.rb`:
```ruby
SeedBed.plant "my/seedfile"
SeedBed.plant "another/seedfile"
```
1. When `rake db:seed` is run, all seed files invoked by `plant` will be run.

## Automatic Rake Tasks

Seedbed automatically generates rake tasks for existing files in the `db/seeds` directory. For example, if you have the file `db/seeds/admin_users.rb` the following rake task will be available:

`rake db:seed:admin_users`

Nested directories are supported and will be used as the namespace in the rake task. For example, the file `db/seeds/admin/users.rb` would be accessed via:

`rake db:seed:admin:users`

## Copyright

Copyright (c) 2010 The Able Few Spencer Markowski. See LICENSE.txt for further details.
