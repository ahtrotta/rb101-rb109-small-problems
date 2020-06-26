=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

print 'Please write one word or multiple words: '
str = gets.chomp

puts "There are #{str.length - str.count(' ')} characters in \"#{str}\"."
