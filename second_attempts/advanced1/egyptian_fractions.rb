=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- initialize denominator to 1
- loop (increase denominator by 1)
  - subtract 1 / denominator from input
  - if result is greater than 0 add to array

=end

def egyptian(num)
  arr = []
  denom = 1
  loop do
    res = num - Rational(1, denom)
    if res >= 0
      num = res
      arr << denom
      break if num == 0
    end
    denom += 1
  end
  arr
end

def unegyptian(arr)
  arr.map { |denom| Rational(1, denom) }.sum
end

# test cases

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
