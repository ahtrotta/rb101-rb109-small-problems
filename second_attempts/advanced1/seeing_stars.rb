=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- 

=end

def star(n)
  pre_spaces = (n / 2) - 1
  lines = (0..pre_spaces).map do |spaces|
    ' ' * (pre_spaces - spaces) + '*' + ' ' * spaces + '*' + ' ' * spaces + '*'
  end
  puts lines.reverse + ['*' * n] + lines
end

# test cases

star(7)
star(9)
star(25)
