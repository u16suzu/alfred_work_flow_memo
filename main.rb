require './lib/new'
require './lib/daily'
require './lib/monthly'
require './lib/annual'

command = ARGV[0]
new_file_name = ARGV[1]

case command
when "new"
  New.new.make_file( new_file_name )
when "daily"
  Daily.new.make_file
when "monthly"
  Monthly.new.make_file
when "annual"
  Annual.new.make_file
else
end
