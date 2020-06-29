=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def ascii_value(str)
#  str.chars.map(&:ord).inject(0, :+)
#end

#def ascii_value(str)
#  (0...str.length).map { |i| str[i].ord }.inject(0, :+)
#end

def ascii_value(str)
  sum = 0
  counter = 0
  loop do
    break if counter == str.length
    sum += str[counter].ord
    counter += 1
  end
  sum
end

# test cases

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
