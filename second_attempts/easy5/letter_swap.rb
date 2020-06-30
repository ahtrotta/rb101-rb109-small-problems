=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def swap(str)
#  str.split.map do |word| 
#    word[0], word[-1] = word[-1], word[0]
#    word
#  end.join(' ')
#end

#def swap(str)
#  str.split.each_with_object([]) do |word, arr|
#    word[0], word[-1] = word[-1], word[0]
#    arr << word
#  end.join(' ')
#end

#def swap(str)
#  str.split.each_with_object([]) do |word, arr|
#    chars = word.chars
#    last = chars.pop
#    first = chars.shift || ''
#    chars.unshift(last)
#    chars << first
#    arr << chars.join
#  end.join(' ')
#end

def swap(str)
  new_str = ''
  words = str.split
  counter = 0
  loop do
    break if counter == words.size
    word = words[counter]
    word[0], word[-1] = word[-1], word[0]
    new_str << (word + ' ')
    counter += 1
  end
  new_str.chop
end

# test cases

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
