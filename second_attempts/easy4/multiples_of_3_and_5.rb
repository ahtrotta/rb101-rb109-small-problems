=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def multisum(num)
#  1.upto(num).select { |i| i % 3 == 0 || i % 5 == 0 }.reduce(:+)
#end

def multisum(num)
  sum = 0
  until num == 0
    sum += num if num % 3 == 0 || num % 5 == 0
    num -= 1
  end
  sum
end
      
# test cases

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
