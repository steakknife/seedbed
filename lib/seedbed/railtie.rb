require 'seedbed'
require 'rails'

module SeedBed
  class Railtie < Rails::Railtie
    rake_tasks { SeedBed.tasks }
  end
end
