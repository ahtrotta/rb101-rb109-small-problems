=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- check if divisible by 400


=end

#def leap_year?(year)
#  if year % 4 == 0  
#    year % 100 == 0 ? (year % 400 == 0 ? true : false) : true
#  else
#    false
#  end
#end

#def leap_year?(year)
#  if year % 400 == 0
#    true
#  else
#    year % 100 == 0 ? false : (year % 4 == 0 ? true : false)
#  end 
#end

def leap_year?(year)
  year % 400 == 0 ? true : (year % 100 == 0 ? false : year % 4 == 0)
end

# test cases

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
