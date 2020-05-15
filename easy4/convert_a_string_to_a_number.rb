DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0,
           'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 
           'E' => 14, 'F' => 15 }

def string_to_integer(str)
  arr = str.reverse.chars
  (0...arr.size).map { |i| DIGITS[arr[i]] * 10**i }.reduce(:+)
end

def hexadecimal_to_integer(hex)
  arr = hex.upcase.reverse.chars
  (0...hex.size).map { |i| DIGITS[arr[i]] * 16**i }.reduce(:+)
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

puts hexadecimal_to_integer('4D9f') == 19871
puts hexadecimal_to_integer('7FF9') == 32761
