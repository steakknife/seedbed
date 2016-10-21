class SeedBed
  attr_accessor :path, :debug

  def initialize(path = 'db/seeds')
    @path = path
    @debug = true
  end
  
  def plant(file)
    yield self if block_given?
    expanded_path = File.expand_path("#{path}/#{file.to_s}.rb")
    puts "Growing #{expanded_path}" if debug
    require expanded_path
  end
  
  def available_seeds
    basedir = File.join(expanded_seed_path, "**" , "*.rb")
    files = Dir.glob(basedir).collect{|d| d.split(expanded_seed_path).last.split('/')[1..-1].collect{|s| s.split('.rb').first.to_sym} }
    namespaces = Hash.new{ |h,k| h[k] = Hash.new &h.default_proc }
    files.each do |path|
      sub = namespaces
      path.each do |dir|
        sub[dir]
        sub = sub[dir]
      end
    end
    namespaces
  end
  
  def tasks(seeds = available_seeds)
    add_namespaced_tasks(seeds)
  end
  
  private

  def expanded_seed_path
    File.expand_path(path)
  end

  def add_namespaced_tasks(seeds)
    Rake.application.in_namespace :db do
      Rake.application.in_namespace :seed do
        add_tasks(seeds)
      end
    end
  end

  def add_tasks(seeds)
    seeds.each do |name, nested_seeds|
      if nested_seeds.empty?
        Rake.application.last_description = "Plants seeds for #{name}"
        Rake.application.define_task(Rake::Task, name.to_sym => :environment) do |task|
          scope = task.scope.to_a.unshift(name) and scope.pop(2)
          plant scope.reverse.join('/')
        end
      else
        Rake.application.in_namespace name do
          add_tasks(nested_seeds)
        end
      end
    end
  end
end

require 'rails'
require 'seedbed/railtie' if defined?(Rails)
