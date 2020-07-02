=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def get_grade(scr1, scr2, scr3)
  case ([scr1, scr2, scr3].inject(:+) / 3.0)
  when (90..100)    then 'A'
  when (80...90)    then 'B'
  when (70...80)    then 'C'
  when (60...70)    then 'D'
  else                   'F'
  end
end

# test cases

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
