require 'seedbed'
require 'rails'

class SeedBed
  class Railtie < Rails::Railtie
    rake_tasks do
      SeedBed.new.tasks
    end
  end
end
