def multiply(num1, num2)
  num1 * num2
end

def square(arg)
  multiply(arg, arg)
end

def power(arg, n)
  mult, remainder = n.divmod(2)
  prod = 1
  mult.times { prod *= multiply(arg, arg) }
  remainder == 0 ? prod : prod * arg
end

def power(arg, n)
  result = 1
  n.times { result = multiply(result, arg) }
  result
end


puts square(5) == 25
puts square(-8) == 64
puts power(5, 2) == 25
puts power(5, 3) == 125
puts power(12, 2) == 144
puts power(3, 3) == 27
