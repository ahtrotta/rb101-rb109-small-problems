=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def reversed_number(num)
#  num.to_s.reverse.to_i
#end

def reversed_number(num)
  arr = []
  until num == 0
    num, rem = num.divmod(10)
    arr << rem
  end
  arr.join.to_i
end


# test cases

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
