require 'pry'

def rotate90(mat)
  rotate = mat[0].map { |_| [] }
  (mat.size - 1).downto(0) do |i|
    mat[i].each_with_index { |el, i| rotate[i] << el }
  end
  rotate
end

def rotate_matrix(mat, degs)
  rotate = mat[0].map { |_| [] }
  (mat.size - 1).downto(0) do |i|
    mat[i].each_with_index { |el, i| rotate[i] << el }
  end
  degs -= 90
  return rotate if degs == 0
  return rotate_matrix(rotate, degs)
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

binding.pry

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
