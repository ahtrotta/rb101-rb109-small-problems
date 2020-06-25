DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(num)
  str = ''
  loop do
    num, dig = num.divmod(10)
    str << DIGITS[dig]
    break if num == 0
  end
  str.reverse
end

def signed_integer_to_string(n)
  num_str = integer_to_string(n.abs)
  if n < 0 
    '-' + num_str
  elsif n > 0
    '+' + num_str
  else
    '0'
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
