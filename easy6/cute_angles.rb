DEGREE = "\xC2\xB0"
MIN_PER_DEG = 60
SEC_PER_MIN = 60

def dms(num)
  min = (num - num.floor) * MIN_PER_DEG
  sec = (min - min.floor) * SEC_PER_MIN
  format('%02d' + DEGREE + '%02d' + "'" + '%02d' + '"',
         num.floor % 360, min.floor, sec.floor)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(400)
puts dms(-40)
puts dms(-420)
