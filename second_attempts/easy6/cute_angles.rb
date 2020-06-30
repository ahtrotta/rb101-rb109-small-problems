=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

DEGREE = "\xC2\xB0"
MINS_PER_DEG = 60
SECS_PER_MIN = 60

def dms(float)
  degs, rem = (float % 360).divmod(1)
  mins, rem = (rem * MINS_PER_DEG).divmod(1)
  secs, _ = (rem * SECS_PER_MIN).divmod(1)
  mins, secs = [mins, secs].map { |num| format("%02i", num) }
  degs.to_s + DEGREE + mins + "'" + secs + '"'
end

# test cases

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
