require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new :spec
RuboCop::RakeTask.new

task default: %i[rubocop steep spec]

task :steep do
  require 'steep'
  require 'steep/cli'

  Steep::CLI.new(argv: ['check'], stdout: $stdout, stderr: $stderr, stdin: $stdin).run
end

namespace :steep do
  task :stats do
    exec %q(bundle exec steep stats --log-level=fatal | awk -F',' '{ printf "%-28s %-9s %-12s %-14s %-10s\n", $2, $3, $4, $5, $7 }') # rubocop:disable Layout/LineLength
  end
end
