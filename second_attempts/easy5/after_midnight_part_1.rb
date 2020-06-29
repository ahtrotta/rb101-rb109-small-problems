=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def time_of_day(int)
  hours, minutes = int.divmod(60)
  days, hours = hours.divmod(24)
  "#{format("%02i", hours)}:#{format("%02i", minutes)}"
end

# further exploration
require 'date'

DAYS = { 0 => 'Sunday', 1 => 'Monday', 2 => 'Tuesday', 3 => 'Wednesday',
         4 => 'Thursday', 5 => 'Friday', 6 => 'Saturday' }
MINUTES_PER_DAY = 24 * 60

#def time_and_day(int)
#  hours, minutes = int.divmod(60)
#  days, hours = hours.divmod(24)
#  "#{DAYS[days % 7]} #{format("%02d:%02d", hours, minutes)}"
#end

def time_and_day(int)
  date = DateTime.new(2020, 1, 5, 0, 0, 0)
  days = int.to_f / MINUTES_PER_DAY
  date += days
  "#{DAYS[date.wday]} #{format("%02d:%02d", date.hour, date.minute)}"
end

# test cases

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
puts time_and_day(-4231) == "Thursday 01:29"
