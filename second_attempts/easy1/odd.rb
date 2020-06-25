=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def is_odd?(int)
#  int % 2 == 1
#end

#def is_odd?(int)
#  _, remainder = int.divmod(2)
#  remainder == 1
#end

#def is_odd?(int)
#  (int / 2) == ((int - 1) / 2)
#end

# further exploration
def is_odd?(int)
  int.remainder(2).abs == 1
end

# test cases

puts is_odd?(2) == false    # => false
puts is_odd?(5) == true     # => true
puts is_odd?(-17) == true   # => true
puts is_odd?(-8) == false   # => false
puts is_odd?(0) == false    # => false
puts is_odd?(7) == true     # => true
