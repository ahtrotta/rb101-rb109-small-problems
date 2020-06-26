=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def short_long_short(s1, s2)
  s1.size > s2.size ? s2 + s1 + s2 : s1 + s2 + s1
end

# test cases

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
