=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def multiply(n1, n2)
  n1 * n2
end

def square(int)
  int**2
end

#further explorations
def power(int, p)
  pwr = int
  (p - 1).times do
    pwr = multiply(pwr, int)
  end
  pwr
end

# test cases

puts square(5) == 25
puts square(-8) == 64
puts power(5, 2) == 25
puts power(-8, 2) == 64
puts power(5, 3) == 125
