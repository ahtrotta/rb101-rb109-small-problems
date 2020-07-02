=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- convert num to string
- call recursive function
  - if string is length 1 return it
  - rotate string once
  - first digit + function call with rest of string
- convert back to integer

ALGORITHM2:
- convert num to array
- until array empty
  - rotate array
  - append first digit to new array
- join new array and convert to integer

=end

def max_rotate_string(str)
  return str if str.length == 1
  new_str = str[1..-1] + str[0]
  new_str[0] + max_rotate_string(new_str[1..-1])
end

#def max_rotation(num)
#  max_rotate_string(num.to_s).to_i
#end

def max_rotation(num)
  arr = num.digits.reverse
  new_arr = []
  until arr.empty?
    arr.push(arr.shift)
    new_arr << arr.shift
  end
  new_arr.join.to_i
end


# test cases

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
