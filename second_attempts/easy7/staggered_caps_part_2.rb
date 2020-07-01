=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def staggered_case(str)
#  caps = true
#  str.chars.each_with_object('') do |c, new_str|
#    if c =~ /[a-zA-Z]/
#      caps ? new_str << c.upcase : new_str << c.downcase
#      caps = !caps
#    else
#      new_str << c
#    end
#  end
#end

def staggered_case(str, alt=false)
  caps = true
  new_str = ''
  i = 0
  loop do
    break if i == str.length
    if ('a'..'z').include?(str[i]) || ('A'..'Z').include?(str[i])
      caps ? new_str << str[i].upcase : new_str << str[i].downcase
      caps = !caps
    else
      new_str << str[i]
      caps = !caps if alt
    end
    i += 1
  end
  new_str
end

# test cases

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
