def recursive_rotation(arr)
  return arr if arr.size == 1
  rotated_arr = arr[1..-1] + [arr[0]]
  return [rotated_arr[0]] + recursive_rotation(rotated_arr[1..-1])
end

def max_rotation(int)
  arr = int.digits.reverse
  recursive_rotation(arr).join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
