#def sum(int)
#  int.to_s.chars.map { |n| n.to_i }.reduce(:+)
#end

def sum(int)
  rest, last = int.divmod(10)
  return last if rest == 0
  last + sum(rest)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
