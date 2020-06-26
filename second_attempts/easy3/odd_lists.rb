=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def oddities(arr)
#  return [] if arr == []
#  (0...arr.size).select(&:even?).map { |i| arr[i] }
#end

#def oddities(arr)
#  odds = []
#  arr.each_with_index { |el, i| odds << el if i.even? }
#  odds
#end

#def oddities(arr)
#  add = true
#  arr.each_with_object([]) do |el, obj|
#    obj << el if add
#    add = !add
#  end
#end

def oddities(arr)
  odds = []
  count = 0
  while count < arr.size
    odds << arr[count]
    count += 2
  end
  odds
end

# test cases

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
