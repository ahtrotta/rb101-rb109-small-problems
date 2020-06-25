=begin

PROBLEM:
convert an integer into a list of digits

INPUT(S):
integer

OUTPUTS(S):
array of integers representing each digit in the input integer

ALGORITHM:
- convert integer to string
- split string into array of characters
- convert each character into an integer

=end

#def digit_list(int)
#  int.to_s.chars.map(&:to_i)
#end

def digit_list(int)
  arr = []
  until int == 0
    int, rem = int.divmod(10)
    arr.unshift(rem)
  end
  arr
end

# test cases

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
