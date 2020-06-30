=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate backwards through array and add each element to new array

=end

#def reverse(arr)
#  idx = -1
#  new_arr = []
#  loop do
#    break if idx == -arr.size - 1
#    new_arr << arr[idx]
#    idx -= 1
#  end
#  new_arr
#end

#def reverse(arr)
#  arr.each_with_object([]) do |el, new_arr|
#    new_arr.unshift(el)
#  end
#end

#def reverse(arr)
#  new_arr = arr.dup
#  (arr.size / 2).times do |i|
#    new_arr[i], new_arr[-(i + 1)] = arr[-(i + 1)], arr[i]
#  end
#  new_arr
#end

def reverse(arr)
  arr.inject([]) do |new_arr, el|
    new_arr.unshift(el)
  end
end

# test cases

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
