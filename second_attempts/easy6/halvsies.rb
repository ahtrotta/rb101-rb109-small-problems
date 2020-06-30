=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- get half index
- slice up to half
- slice from half to end

=end

def halvsies(arr)
  half_idx = (arr.size / 2.0).ceil
  [arr[0...half_idx], arr[half_idx..-1]]
end

# test cases

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
