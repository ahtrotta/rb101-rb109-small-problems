def triangle(s1, s2, s3)
  return :equilateral if s1 == s2 && s2 == s3
  sides = [s1, s2, s3].sort
  return :invalid if sides[0] + sides[1] <= sides[2]
  return :isosceles if sides[1] == sides[2]
  return :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
