=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- start with [1, 1]
- 

=end

def fibonacci_last(n)
  first, last = [1, 1]
  (n - 2).times { first, last = last, (first + last) % 10 }
  last
end

# further exploration
FIBONACCI_LAST = 1.upto(60).map { |i| fibonacci_last(i) }

def fibonacci_last_instant(n)
  FIBONACCI_LAST[(n - 1) % 60]
end


# test cases

#puts fibonacci_last(15) == 0        # -> 0  (the 15th Fibonacci number is 610)
#puts fibonacci_last(20) == 5        # -> 5 (the 20th Fibonacci number is 6765)
#puts fibonacci_last(100) == 5       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
#puts fibonacci_last(100_001) == 1   # -> 1 (this is a 20899 digit number)
#puts fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
#puts fibonacci_last(123456789) == 4 # -> 4

puts fibonacci_last_instant(15) == 0        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last_instant(20) == 5        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last_instant(100) == 5       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last_instant(100_001) == 1   # -> 1 (this is a 20899 digit number)
puts fibonacci_last_instant(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
puts fibonacci_last_instant(123456789) == 4 # -> 4
puts fibonacci_last_instant(123_456_789_987_745) == 5
