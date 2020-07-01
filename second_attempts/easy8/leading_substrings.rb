=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def substrings_at_start(str)
#  (1..str.length).map { |i| str[0, i] }
#end

def substrings_at_start(str)
  arr = []
  sub_str = ''
  str.chars.each do |c|
    sub_str += c
    arr << sub_str
  end
  arr
end

# test cases

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
