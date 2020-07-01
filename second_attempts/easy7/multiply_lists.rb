=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- zip the two arrays
- map the sum of each sub array

=end

#def multiply_list(arr1, arr2)
#  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
#end

#def multiply_list(arr1, arr2)
#  new_arr = []
#  arr1.each_with_index do |el, i| 
#    new_arr.push(el * arr2[i])
#  end
#  new_arr
#end

def multiply_list(arr1, arr2)
  new_arr = []
  i = 0
  loop do
    break if i == arr1.size
    new_arr << arr1[i] * arr2[i]
    i += 1
  end
  new_arr
end

# test cases

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
