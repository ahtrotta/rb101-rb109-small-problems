puts "Enter the length of the room in meters:"
length = gets.chomp

puts "Enter the width of the room in meters:"
width = gets.chomp

area = length.to_f * width.to_f
area_ft = area * 10.7639

puts "The area of the room is #{area} square meters (#{area_ft} square feet)."
