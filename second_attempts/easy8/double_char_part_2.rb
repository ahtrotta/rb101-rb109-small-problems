=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def double_consonants(str)
#  str.chars.each_with_object('') do |c, new_str|
#    if ('a'..'z').include?(c.downcase)
#      if %w(a e i o u).include?(c.downcase)
#        new_str << c
#      else
#        new_str << c << c
#      end
#    else
#      new_str << c
#    end
#  end
#end

def double_consonants(str)
  return str if str == ''
  if ('a'..'z').include?(str[0].downcase)
    if %w(a e i o u).include?(str[0].downcase)
      str[0] + double_consonants(str[1..-1])
    else
      str[0] * 2 + double_consonants(str[1..-1])
    end
  else
    str[0] + double_consonants(str[1..-1])
  end
end

# test cases

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
