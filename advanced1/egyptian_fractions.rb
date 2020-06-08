require 'pry'

def unegyptian(arr)
  arr.map { |n| Rational(1, n) }.sum
end

def egyptian(rational)
  den = 1
  arr = []
  while unegyptian(arr) < rational
    if unegyptian(arr) + Rational(1, den) < rational
      arr << den
      den += 1
    elsif unegyptian(arr) + Rational(1, den) == rational
      arr << den
      break
    else
      den += 1
    end
  end
  arr
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
