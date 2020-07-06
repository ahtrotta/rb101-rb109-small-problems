=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def triangle(side1, side2, side3)
  short, mid, long = [side1, side2, side3].sort

  if short + mid <= long || [short, mid, long].include?(0)
    :invalid
  elsif short == mid && mid == long
    :equilateral
  elsif short == mid || mid == long
    :isosceles
  else
    :scalene
  end
end

# test cases

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
