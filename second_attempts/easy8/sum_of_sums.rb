=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- create array of arr.size elements from 0 to arr.size - 1
- convert each element into slice starting from 0 up to element and inject
- sum the resultant array

=end

#def sum_of_sums(arr)
#  (1..arr.size).map { |i| arr[0, i].inject(:+) }.inject(:+)
#end

#def sum_of_sums(arr)
#  sum = 0
#  arr.size.times do |i|
#    sum += arr[0, i + 1].reduce(:+)
#  end
#  sum
#end

def sum_of_sums(arr)
  i = 0
  sum = 0
  loop do
    break if i == arr.size
    sum += arr[i] * (arr.size - i)
    i += 1
  end
  sum
end

# test cases

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
