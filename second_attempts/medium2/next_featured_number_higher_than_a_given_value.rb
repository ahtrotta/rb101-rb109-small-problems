=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- add 1 until multiple of 7 and odd
- loop
  - convert to string and check if unique is same as chars
  - if string.length is larger than 11 then return impossible
  - add 14

=end

def featured(n)
  loop do
    n += 1
    break if n % 7 == 0 && n.odd?
  end

  loop do
    if n.to_s.length > 10
      return 'There is no possible number that fulfills those requirements'
    end
    return n if n.to_s.chars.uniq == n.to_s.chars
    n += 14
  end
end

# test cases

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts 
puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
