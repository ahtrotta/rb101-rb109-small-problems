=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate through array (with index) add elements at index to new array

=end

#def interleave(arr1, arr2)
#  new_arr = []
#  arr1.each_with_index do |el, i|
#    new_arr << el
#    new_arr << arr2[i]
#  end
#  new_arr
#end

#def interleave(arr1, arr2)
#  idx = 0
#  new_arr = []
#  loop do
#    break if idx == arr1.size
#    new_arr.push(arr1[idx], arr2[idx])
#    idx += 1
#  end
#  new_arr
#end

#def interleave(arr1, arr2)
#  (0...arr1.size).map { |i| [arr1[i], arr2[i]] }.flatten
#end

# further exploration
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

# test cases

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
