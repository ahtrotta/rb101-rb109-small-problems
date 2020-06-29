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

# test cases

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
