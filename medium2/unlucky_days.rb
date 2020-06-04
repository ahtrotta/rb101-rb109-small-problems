require 'date'

def friday_13th(year)
  (1..12).select { |mon| Date.new(year, mon, 13).friday? }.size
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
