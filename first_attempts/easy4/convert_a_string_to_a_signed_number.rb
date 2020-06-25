DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }

def string_to_integer(str)
  neg = false
  if str[0] == '-'
    neg = true
    str = str[1..-1]
  elsif str[0] == '+'
    str = str[1..-1]
  end

  arr = str.reverse.chars
  sum = (0...arr.size).map { |i| DIGITS[arr[i]] * 10**i }.reduce(:+)
  neg ? sum * -1 : sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('-570') == -570
puts string_to_integer('+100') == 100
