=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
str[0, 2] is hours
str[3, 2] is minutes

=end

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 24 * 60

def after_midnight(str)
  hours = str[0, 2].to_i
  minutes = str[3, 2].to_i
  ((hours * MINUTES_PER_HOUR) + minutes) % MINUTES_PER_DAY
end

def before_midnight(str)
  (MINUTES_PER_DAY - after_midnight(str)) % MINUTES_PER_DAY
end

# test cases

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
