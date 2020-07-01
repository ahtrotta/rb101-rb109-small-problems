=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate through string characters
  - if character is lowercase make uppercase
  - if character is uppercase make lowercase

=end

#def swapcase(str)
#  str.chars.each_with_object('') do |c, arr|
#    if ('a'..'z').include?(c)
#      arr << c.upcase
#    elsif ('A'..'Z').include?(c)
#      arr << c.downcase
#    else
#      arr << c
#    end
#  end
#end

def swapcase(str)
  new_str = ''
  i = 0
  loop do
    break if i == str.length
    if str[i].ord > 96 && str[i].ord < 123
      new_str << (str[i].ord - 32).chr
    elsif str[i].ord > 64 && str[i].ord < 91
      new_str << (str[i].ord + 32).chr
    else
      new_str << str[i]
    end
    i += 1
  end
  new_str
end

# test cases

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
