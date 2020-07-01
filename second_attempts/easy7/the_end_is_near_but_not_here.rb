=begin

PROBLEM:
Retrieve the middle word of a phrase/sentence

INPUT(S):
string of words separated by spaces

OUTPUTS(S):
the middle word

EDGE CASES:
- even number of words (which word is the middle?)
- one word
- no words

ALGORITHM:
- case 0
  - return empty string
- case 1 or 2
  - return the word(s)
- case odd
  - get middle index (arr.size / 2)
- case even
  - return middle two (arr.size / 2) and (arr.size / 2) + 1

=end

def penultimate(str)
  str.split[-2]
end

def middle(str)
  arr = str.split
  if arr.size == 0
    ''
  elsif arr.size.odd?
    arr[arr.size / 2]
  elsif arr.size.even?
    arr[(arr.size / 2) - 1, 2]
  end
end

# test cases

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
puts middle('one two three') == 'two'
puts middle('') == ''
puts middle('one two three four') == ['two', 'three']
puts middle('one') == 'one'
puts middle('one two') == ['one', 'two']
