def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(int, no_digits)
  last_digits = rotate_array(int.digits.reverse[-no_digits..-1])
  first_digits = int.digits.reverse[0...-no_digits]
  (first_digits + last_digits).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
