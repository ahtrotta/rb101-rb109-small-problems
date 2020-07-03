=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- initialize 1 and 2 as [1, 1]
- (n - 2).times

=end

def fibonacci(n)
  fib = [1, 1]
  (n - 2).times do |_|
    fib[0], fib[1] = fib[1], fib[0] + fib[1]
  end
  fib[1]
end

# test cases

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001)
