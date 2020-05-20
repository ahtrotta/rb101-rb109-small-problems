=begin
def reverse(arr)
  (arr.size - 1).downto(0).map { |i| arr[i] }
=end

def reverse(arr)
  0.upto(arr.size - 1).reduce([]) { |new_arr, i| new_arr.unshift(arr[i]) }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]    
