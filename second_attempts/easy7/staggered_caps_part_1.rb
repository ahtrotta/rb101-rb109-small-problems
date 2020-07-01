=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- initialize variable to keep track of capitilazation (true)
- iterate through characters
  - if it's an alphabetic character capitalize based on variable
  - switch variable state

=end

#def staggered_case(str)
#  caps = true
#  arr = str.chars.map do |c|
#    if caps
#      caps = !caps
#      c.upcase
#    else
#      caps = !caps
#      c.downcase
#    end
#  end
#  arr.join
#end

#def staggered_case(str)
#  arr = (0...str.length).map do |i|
#    i.even? ? str[i].upcase : str[i].downcase
#  end
#  arr.join
#end

def staggered_case(str, caps=true)
  i = 0
  new_str = ''
  loop do
    break if i == str.length
    if caps
      new_str << str[i].upcase
    else
      new_str << str[i].downcase
    end
    caps = !caps
    i += 1
  end
  new_str
end

# test cases

puts staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
puts staggered_case('here is a string', false) == 'hErE Is a sTrInG'
