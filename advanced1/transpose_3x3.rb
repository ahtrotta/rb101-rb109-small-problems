def transpose(mat)
  transpose = mat[0].map { |_| [] }
  mat.each do |row|
    row.each_with_index { |el, i| transpose[i] << el }
  end
  transpose
end

def transpose!(mat)
  #
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [10, 11, 12]
]

new_matrix = transpose(matrix)
new_matrix2 = transpose(matrix2)

p new_matrix2
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
