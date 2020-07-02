=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def sequence(num)
#  1.upto(num).to_a
#end

#def sequence(num)
#  (1..num).to_a
#end

#def sequence(num)
#  i = 1
#  arr = []
#  loop do
#    break if i > num
#    arr << i
#    i += 1
#  end
#  arr
#end

#def sequence(num)
#  arr = []
#  num.times { |i| arr << i + 1 }
#  arr
#end

# further exploration
def sequence(num)
  num > 0 ? (1..num).to_a : 1.downto(num).to_a
end

# test cases

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
puts sequence(-2) == [1, 0, -1, -2]
