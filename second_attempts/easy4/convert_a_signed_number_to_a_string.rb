=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def integer_to_string(int)
  arr = []
  loop do
    int, rem = int.divmod(10)
    arr.unshift((rem + 48).chr)
    break if int == 0
  end
  arr.join
end

def signed_integer_to_string(int)
  sign = int > 0 ? '+' : (int < 0 ? '-' : '')
  sign + integer_to_string(int.abs)
end

# test cases

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
