=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def string_to_integer(str)
  str = str.reverse
  (0...str.length).map { |i| (str[i].ord - 48) * 10**i }.inject(:+)
end

#def string_to_signed_integer(str)
#  if str[0] == '-'
#    string_to_integer(str[1..-1]) * -1
#  elsif str[0] == '+'
#    string_to_integer(str[1..-1])
#  else
#    string_to_integer(str)
#  end
#end

# further exploration
def string_to_signed_integer(str)
  negative = 1
  if str[0] == '-' || str[0] == '+'
    negative = -1 if str[0] == '-'
    str = str[1..-1]
  end
  negative * string_to_integer(str)
end
    
# test cases

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
