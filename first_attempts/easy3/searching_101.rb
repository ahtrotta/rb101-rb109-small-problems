array = []
num_endings = { 1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th' }

while array.size < 5
  index = array.size + 1
  puts "==> Enter the #{index}#{num_endings[index]} number:"
  num = gets.chomp.to_i
  array << num
end

puts '==> Enter the last number:'
last_num = gets.chomp.to_i

includes_msg = "The number #{last_num} appears in #{array}."
not_include_msg = "The number #{last_num} does not appear in #{array}."

array.include?(last_num) ? puts(includes_msg) : puts(not_include_msg)
