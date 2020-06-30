=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- reverse!.unshift(list.pop)

=end

#def reverse!(arr)
#  return arr if arr == []
#  last = arr.pop
#  reverse!(arr).unshift(last)
#end

#def reverse!(arr)
#  temp_arr = []
#  temp_arr << arr.pop until arr == []
#  arr << temp_arr.shift until temp_arr == []
#  arr
#end

def reverse!(arr)
  temp = arr.dup
  arr.pop(arr.size)
  index = 0
  loop do
    break if temp == []
    arr << temp.pop
  end
  arr
end

# test cases

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []
