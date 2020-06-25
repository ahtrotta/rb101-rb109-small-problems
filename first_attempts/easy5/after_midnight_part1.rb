def form(h, m)
  [sprintf("%02d", h), sprintf("%02d", m)]
end

def time_of_day(int)
  hours, mins = (int.abs % 1440).divmod(60)
  if int >= 0
    hours, mins = form(hours, mins)
  elsif int < 0
    hours, mins = form(23 - hours, 60 - mins)
  end
  "#{hours}:#{mins}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"

=begin

launch school solution

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
=end
