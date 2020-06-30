=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def word_sizes(str)
#  str.delete('^a-zA-Z ').split.each_with_object(Hash.new(0)) do |word, hsh|
#    hsh[word.size] += 1
#  end
#end

def word_sizes(str)
  hsh = Hash.new(0)
  idx = 0
  word_length = 0
  loop do
    if idx == str.length
      hsh[word_length] += 1 if str.length > 0
      break
    elsif ('a'..'z').include?(str[idx].downcase)
      word_length += 1
    elsif str[idx] == ' '
      hsh[word_length] += 1
      word_length = 0
    end
    idx += 1
  end
  hsh
end

# test cases

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
