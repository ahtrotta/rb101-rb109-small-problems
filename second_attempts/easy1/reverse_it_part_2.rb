=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def reverse_words(str)
#  str.split.map { |word| word.size > 4 ? word.reverse : word }.join(' ')
#end

# created my own string splitting method just for fun
def split_string(str, del=' ')
  str = str + del
  word = ''
  str.chars.each_with_object([]) do |c, arr|
    if c == del
      arr << word
      word = ''
    else
      word << c
    end
  end
end

#def reverse_words(str)
#  arr = split_string(str)
#  new_arr = []
#  count = 0
#  loop do
#    word = arr[count]
#    if word.size > 4
#      new_arr << word.reverse
#    else
#      new_arr << word
#    end
#    count += 1
#    break if count == arr.size
#  end
#  new_arr.join(' ')
#end

def reverse_words(str)
  str.split.each_with_object([]) do |word, arr|
    arr << (word.size > 4 ? word.reverse : word)
  end.join(' ')
end

# test cases

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
