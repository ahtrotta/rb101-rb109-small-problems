=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def swap_name(str)
  str.split.reverse.join(', ')
end

# test cases

puts swap_name('Joe Roberts') == 'Roberts, Joe'
