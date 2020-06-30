=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def merge(arr1, arr2)
#  (arr1 + arr2).uniq
#end

def merge(arr1, arr2)
  new_arr = []
  [arr1, arr2].each do |arr|
    arr.each { |el| new_arr << el unless new_arr.include?(el) }
  end
  new_arr
end

# test cases

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
