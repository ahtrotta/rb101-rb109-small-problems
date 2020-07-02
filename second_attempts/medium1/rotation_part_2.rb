=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- convert number to string
- slice string 

=end

def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_rightmost_digits(num, digits)
  (num.to_s[0...-digits] + rotate_string(num.to_s[-digits..-1])).to_i
end

# test cases

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
