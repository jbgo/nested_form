require 'bundler'
Bundler::GemHelper.install_tasks

require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'

spec_files = Rake::FileList["spec/**/*_spec.rb"]

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = ["-c"]
end

task :default => :spec
