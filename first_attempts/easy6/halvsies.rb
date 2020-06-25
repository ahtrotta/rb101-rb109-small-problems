def halvsies(arr)
  idx_split = (arr.size - 1) / 2
  [arr[0..idx_split], arr[(idx_split + 1)..-1]]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
