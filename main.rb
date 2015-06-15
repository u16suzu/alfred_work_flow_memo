require './lib/new.rb'
require './lib/daily.rb'
require './lib/monthly.rb'


command = ARGV[0]

case command
when "new"
  command_target = New.new
when "daily"
  command_target = Daily.new
when "monthly"
  command_target = Monthly.new
else
end

command_target.make_file
