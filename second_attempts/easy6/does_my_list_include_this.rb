=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def include?(arr, el)
#  matches = arr.select { |item| item == el }
#  matches.size > 0
#end

#def include?(arr, el)
#  arr.each { |item| return true if item == el }
#  false
#end

def include?(arr, el)
  idx = 0
  loop do
    break if idx == arr.size
    return true if arr[idx] == el
    idx += 1
  end
  false
end

# test cases

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
