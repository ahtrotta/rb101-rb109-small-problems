=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def triangle(angle1, angle2, angle3)
  small, mid, large = [angle1, angle2, angle3].sort
  
  if small + mid + large != 180 || [small, mid, large].include?(0)
    :invalid
  elsif large > 90
    :obtuse
  elsif large == 90
    :right
  else
    :acute
  end
end

# test cases

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
