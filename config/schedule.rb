# frozen_string_literal: true

# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
# set :output, 'log/job/cron_log.log'

# At minute 0 past every hour from 1 through 1.
# every '0 1-1 * * *' do
rails_env = ENV['RAILS_ENV'] ||= 'production'
set :output, error: 'log/crontab_error.log', standard: 'log/crontab.log'
set :environment, rails_env
ENV.each { |k, v| env(k, v) }

every 1.minute do
  command 'ls -lha'
end
