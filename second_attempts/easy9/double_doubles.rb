=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end
require 'pry'

def double_num?(num)
  return false if num.to_s.length.odd?
  half = num.to_s.length / 2
  return false if num.to_s[0...half] != num.to_s[half..-1]
  true
end

def twice(num)
  double_num?(num) ? num : num * 2
end

# test cases

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
