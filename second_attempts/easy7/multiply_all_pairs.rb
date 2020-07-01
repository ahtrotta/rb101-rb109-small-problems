=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate through first array
  - iterate through second array
    - combine both elements and add to a new array
- iterature through new array
  - convert each sub_array into product

=end

#def multiply_all_pairs(arr1, arr2)
#  arr = arr1.each_with_object([]) do |el1, new_arr|
#    arr2.each do |el2|
#      new_arr << [el1, el2]
#    end
#  end
#  arr.map { |sub_arr| sub_arr.reduce(:*) }.sort
#end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |sub_arr| sub_arr.reduce(:*) }.sort
end

# test cases

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
