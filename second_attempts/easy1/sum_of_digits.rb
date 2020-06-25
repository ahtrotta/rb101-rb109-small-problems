=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def sum(int)
#  int.to_s.chars.map(&:to_i).reduce(:+)
#end

def sum(int)
  sum = 0
  until int == 0
    int, rem = int.divmod(10)
    sum += rem
  end
  sum
end

# test cases

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
