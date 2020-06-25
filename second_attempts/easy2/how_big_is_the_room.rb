=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

SQMETERS_TO_SQFEET = 10.7639

def room_size
  puts 'Enter the length of the room in meters:'
  length = gets.chomp.to_f
  
  puts 'Enter the width of the room in meters:'
  width = gets.chomp.to_f

  area = length * width
  area_feet = area * SQMETERS_TO_SQFEET

  puts "The area of the room is #{area.round(2)} square meters " +
       "(#{area_feet.round(2)} square feet)"
end

# test cases

room_size
