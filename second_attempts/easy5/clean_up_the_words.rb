=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end
require 'pry'

#def cleanup(str)
#  new_str = str.gsub(/[^a-z]/, ' ')
#  (0...new_str.size).map do |i|
#    unless new_str[i] == ' ' && new_str[i - 1] == ' ' && i != 0
#      new_str[i]
#    end
#  end.join
#end
require 'pry'

#def cleanup(str)
#  new_str = ''
#  idx = 0
#  loop do
#    break if idx == str.size
#    if ('a'..'z').include?(str[idx])
#      new_str << str[idx]
#    elsif new_str[-1] != ' '
#      new_str << ' '
#    end
#    idx += 1
#  end
#  new_str
#end

def cleanup(str)
  str.chars.each_with_object('') do |c, new_str|
    if c.ord > 96 && c.ord < 123
      new_str << c
    elsif new_str[-1] != ' '
      new_str << ' '
    end
  end
end

# test cases

puts cleanup("---what's my +*& line?") == ' what s my line '
