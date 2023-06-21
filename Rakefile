# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'gemfury/tasks'

# override rubygems' normal release task to use Gemfury
Rake::Task['release'].clear
task :release, [:remote] => ['build', 'release:guard_clean', 'release:source_control_push'] do
  Rake::Task['fury:release'].invoke(nil, 'patientslikeme')
end

RSpec::Core::RakeTask.new(:spec)

task default: :spec
