require 'pry'

def fibonacci(n)
  arr = [1, 1]
  (n - 2).times { arr[0], arr[1] = arr[1], arr[0] + arr[1] }
  arr[1]
end

binding.pry

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
