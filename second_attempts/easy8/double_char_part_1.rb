=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def repeater(str)
#  str.chars.each_with_object('') do |c, s|
#    s << c * 2
#  end
#end

def repeater(str)
  new_str = ''
  i = 0
  loop do
    break if i == str.length
    new_str << str[i] << str[i]
    i += 1
  end
  new_str
end

# test cases

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
