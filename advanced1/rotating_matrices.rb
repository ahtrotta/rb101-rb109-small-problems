def rotate90(mat)
  rotate = []
  mat[0].size.times do |_|
    nil_arr = []
    mat.size.times { |_| nil_arr << nil }
    rotate << nil_arr
  end

  cnt = 0
  (mat.size - 1).downto(0) do |col_i|
    mat[cnt].each_with_index { |el, i| rotate[i][col_i] = el }
    cnt += 1
  end
  rotate
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

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
