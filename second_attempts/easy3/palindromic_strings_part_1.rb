=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def palindrome?(str)
  str == str.reverse
end

# further exploration
def palindrome_arr?(arr)
  arr == arr.reverse
end

# test cases

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome_arr?([1, 2, 3, 2, 1]) == true
puts palindrome_arr?([1, 2, 3]) == false
