def rotate_array(arr)
  arr[1..-1] << arr[0]
end

def rotate_integer(int)
  dig0, rest = int.divmod(10 ** (int.to_s.size - 1))
  (rest * 10) + dig0
end
  

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
 
x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

y = '1234'
p rotate_array(y) == '2341'
p y == '1234'

p rotate_integer(12345) == 23451
