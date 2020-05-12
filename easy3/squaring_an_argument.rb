def multiply(num1, num2)
  num1 * num2
end

def square(arg)
  multiply(arg, arg)
end

puts square(5) == 25
puts square(-8) == 64
