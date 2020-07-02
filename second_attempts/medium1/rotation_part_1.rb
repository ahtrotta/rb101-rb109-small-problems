=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def rotate_array(arr)
  new_arr = arr.dup
  new_arr.push(new_arr.shift)
end

def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

# test cases

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

puts rotate_string('string') == 'trings'
puts rotate_string('a') == 'a'

puts rotate_integer(12345) == 23451
puts rotate_integer(1) == 1
