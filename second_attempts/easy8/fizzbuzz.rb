=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def fizzbuzz(first, last)
  arr = []
  first.upto(last) do |num|
    if num % 15 == 0
      arr << 'FizzBuzz'
    elsif num % 3 == 0
      arr << 'Fizz'
    elsif num % 5 == 0
      arr << 'Buzz'
    else
      arr << num.to_s
    end
  end
  puts arr.join(', ')
end

# test cases

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
