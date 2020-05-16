MINUTES_PER_DAY = 1440

def after_midnight(str)
  hours, mins = str.split(':').map(&:to_i)
  ((hours * 60) + mins) % MINUTES_PER_DAY
end

def before_midnight(str)
  (MINUTES_PER_DAY - after_midnight(str)) % MINUTES_PER_DAY
end

puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0
puts before_midnight('00:00') == 0
puts before_midnight('12:34') == 686
puts before_midnight('24:00') == 0
