=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def find_fibonacci_index_by_length(int)
#  index = 1
#  fib = [1, 1]
#  until fib[0].to_s.length == int
#    fib[0], fib[1] = fib[1], fib[0] + fib[1]
#    index += 1
#  end
#  index
#end

def find_fibonacci_index_by_length(int)
  fib = [1, 1]
  fib << fib[-1] + fib[-2] until fib[-1].to_s.length == int
  fib.size
end

# test cases

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
