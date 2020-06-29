=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def running_total(arr)
#  (1..arr.size).map { |i| arr[0, i].inject(:+) }
#end

#def running_total(arr)
#  new_arr = []
#  sum = 0
#  counter = 0
#  loop do
#    break if counter == arr.size
#    sum += arr[counter]
#    new_arr << sum
#    counter += 1
#  end
#  new_arr
#end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |num, new_arr|
    sum += num
    new_arr << sum
  end
end

# test cases

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
