require './lib/new.rb'
require './lib/daily.rb'
require './lib/monthly.rb'


command = ARGV[0]
new_file_name = ARGV[1]

case command
when "new"
  New.new.make_file( new_file_name )
when "daily"
  Daily.new.make_file
when "monthly"
  Monthly.new.make_file
else
end
