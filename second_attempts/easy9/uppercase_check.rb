=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def uppercase?(str)
#  str.delete('^a-zA-Z').each_char do |c|
#    return false if ('a'..'z').include?(c)
#  end
#  true
#end

def uppercase?(str)
  i = 0
  loop do
    break if i == str.length
    return false if ('a'..'z').include?(str[i])
    i += 1
  end
  true
end

# test cases

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
