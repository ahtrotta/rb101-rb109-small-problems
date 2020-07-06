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

ALGORITHM2:
- initialize count to 0
- loop until count = matrix[0].size - 2
  - second_i = count + 1
  - loop until second_count = matrix[0].size - 2

SCRATCH NOTES:
mtrx[0][1], mtrx[1][0] = mtrx[1][0], mtrx[0][1]
mtrx[0][2], mtrx[2][0] = mtrx[2][0], mtrx[0][2]
mtrx[1][2], mtrx[2][1] = mtrx[2][1], mtrx[1][2]

=end
require 'pry'

def transpose!(mtrx)
  i1 = 0
  loop do
    break if i1 == mtrx[0].size - 1
    i2 = i1 + 1
    loop do
      break if i2 == mtrx[0].size
      mtrx[i1][i2], mtrx[i2][i1] = mtrx[i2][i1], mtrx[i1][i2]
      i2 += 1
    end
    i1 += 1
  end
  mtrx
end

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

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
p transpose([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]])
p transpose!(matrix)
p matrix

p matrix2 = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16]
]
p transpose!(matrix2)
