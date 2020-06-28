=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def get_suffix(last_two)
  if %w(11 12 13).include?(last_two)
    'th'
  elsif last_two[1] == '1'
    'st'
  elsif last_two[1] == '2'
    'nd'
  elsif last_two[1] == '3'
    'rd'
  else
    'th'
  end
end

def century(int)
  cent = ((int - 1) / 100) + 1
  last_two = format("%2i", cent)[-2, 2]
  cent.to_s + get_suffix(last_two)
end

# test cases

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
