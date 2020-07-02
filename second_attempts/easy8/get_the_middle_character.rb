=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- if string length odd
  - half is length / 2
- if string length even
  - half is (length / 2) - 1

=end

#def center_of(str)
#  if str.length.odd?
#    str[str.length / 2]
#  else
#    str[(str.length / 2) - 1, 2]
#  end
#end

def center_of(str)
  len = str.length
  len.odd? ? str[len / 2] : str[(len / 2) - 1, 2]
end

# test cases

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
