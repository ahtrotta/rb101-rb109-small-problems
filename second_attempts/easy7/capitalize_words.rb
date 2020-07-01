=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def word_cap(str)
#  str.split.map(&:capitalize).join(' ')
#end

#def word_cap(str)
#  idx = 0
#  new_str = ''
#  loop do
#    break if idx == str.length
#    if idx == 0 || str[idx - 1] == ' '
#      new_str << str[idx].upcase
#    else
#      new_str << str[idx].downcase
#    end
#    idx += 1
#  end
#  new_str
#end

def word_cap(str)
  arr = str.split.map do |word|
    word.downcase!
    word[0] = word[0].upcase
    word
  end
  arr.join(' ')
end

# test cases

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
