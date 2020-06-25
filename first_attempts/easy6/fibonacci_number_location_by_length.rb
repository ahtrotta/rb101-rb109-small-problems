def find_fibonacci_index_by_length(num)
  fib = [1, 1]
  until fib[-1].to_s.size >= num
    fib.push(fib[-1] + fib[-2])
  end
  fib.size
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(3) == 12
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
