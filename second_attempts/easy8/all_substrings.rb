=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate from 0 to arr.size
  - generate slice on each iteration from iterator # to -1
  - call substrings_at_start for each slice and add to an array
- flatten the collection array

=end

def substrings_at_start(str)
  (1..str.length).map { |i| str[0, i] }
end

#def substrings(str)
#  (0...str.length).map { |i| substrings_at_start(str[i..-1]) }.flatten
#end

#def substrings(str)
#  i = 0
#  arr = []
#  loop do
#    break if i == str.length
#    arr << substrings_at_start(str[i..-1])
#    i += 1
#  end
#  arr.flatten
#end

def substrings(str)
  return [] if str == ''
  substrings_at_start(str) + substrings(str[1..-1])
end

# test cases

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
