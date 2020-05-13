=begin
def oddities(array)
  new_arr = []
  array.each_with_index { |val, index| new_arr << val if (index + 1).odd? }
  new_arr
=end

def oddities(array)
  (1..(array.size)).select(&:odd?).map { |elem| array[elem - 1] }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
