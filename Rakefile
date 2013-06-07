require "bundler/gem_tasks"
require 'rspec/core/rake_task'

$:.unshift File.expand_path('..', __FILE__)

RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = '--color'
end

task :default => :spec