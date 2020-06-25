=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def reverse_sentence(str)
#  str.split.reverse.join(' ')
#end

def reverse_sentence(str)
  arr = str.split
  (1..arr.size).map { |i| arr[-i] }.join(' ')
end

# test cases

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
