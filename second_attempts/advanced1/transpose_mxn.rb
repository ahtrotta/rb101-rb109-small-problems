=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- create new matrix of empty arrays
  - array of n arrays (n = size of each sub_array in original array)
- iterate through original array
  - iterate through each sub_array
    - add each element to corresponding sub_array in new array

=end

def transpose(mtrx)
  trns = (0...mtrx[0].size).map { |_| [] }
  mtrx.each do |sub_arr|
    sub_arr.each_with_index do |el, i|
      trns[i] << el
    end
  end
  trns
end

# test cases

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]
