=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
for '4321'
- (1 * 10**0) + (2 * 10**1) + (3 * 10**2) + (4 * 10**3)

=end

#def string_to_integer(str)
#  str = str.reverse
#  (0...str.length).map { |i| (str[i].ord - 48) * 10**i }.inject(:+)
#end

def string_to_integer(str)
  counter = 0
  sum = 0
  loop do
    break if counter == str.size
    sum += (str[-(counter + 1)].ord - 48) * 10**counter
    counter += 1
  end
  sum
end

#def hexadecimal_to_integer(str)
#  arr = str.downcase.chars.map do |num|
#    num.ord < 60 ? num.ord - 48 : num.ord - 87
#  end
#
#  sum = 0
#  arr.reverse.each_with_index do |num, i|
#    sum += num * 16**i
#  end
#  sum
#end

def hexadecimal_to_integer(str)
  total = 0
  str.downcase.chars.reverse.each_with_index do |el, i|
    int = el.ord < 60 ? el.ord - 48 : el.ord - 87
    total += int * 16**i
  end
  total
end

# test cases

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts hexadecimal_to_integer('4D9f') == 19871
