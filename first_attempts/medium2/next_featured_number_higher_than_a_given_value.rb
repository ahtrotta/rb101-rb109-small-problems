require 'pry'

def featured(int)
  return 'No such number.' if int >= 9_876_543_210
  int += 1
  int += 1 while int % 7 != 0
  int += 7 while !(int.odd? && int.digits == int.digits.uniq)
  int
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
