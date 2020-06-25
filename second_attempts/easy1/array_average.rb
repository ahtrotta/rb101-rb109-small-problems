=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def average(arr)
#  arr.sum / arr.size
#end

#def average(arr)
#  arr.reduce(:+) / arr.size
#end

#def average(arr)
#  sum = 0
#  count = 0
#  loop do
#    num = arr[count]
#    break unless num
#    sum += num
#    count += 1
#  end
#  sum / count
#end

# further exploration
def average(arr)
  arr.sum.to_f / arr.count
end
  

# test cases

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([1, 2, 3, 4, 5])
