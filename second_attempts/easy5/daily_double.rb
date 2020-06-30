=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def crunch(str)
#  new_str = ''
#  idx = 0
#  loop do
#    break if idx == str.size
#    new_str << str[idx] if new_str[-1] != str[idx]
#    idx += 1
#  end
#  new_str
#end

#def crunch(str)
#  new_str = ''
#  str.chars.each { |c| new_str << c if new_str[-1] != c }
#  new_str
#end

def crunch(str)
  str.chars.each_with_object('') { |c, s| s << c if s[-1] != c }
end

# test cases

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
