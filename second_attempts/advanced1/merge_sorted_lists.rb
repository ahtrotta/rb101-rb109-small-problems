=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def merge(arr1, arr2)
#  i1 = 0
#  i2 = 0
#  merged = []
#  loop do
#    break if i1 == arr1.size && i2 == arr2.size
#    if arr1[i1] && arr2[i2]
#      if arr1[i1] > arr2[i2]
#        merged << arr2[i2]
#        i2 += 1
#      else
#        merged << arr1[i1]
#        i1 += 1
#      end
#    elsif arr1[i1]
#      merged << arr1[i1]
#      i1 += 1
#    else
#      merged << arr2[i2]
#      i2 += 1
#    end
#  end
#  merged
#end

def merge(arr1, arr2)
  i1 = 0
  i2 = 0
  merged = []
  loop do
    break if i1 == arr1.size && i2 == arr2.size
    if arr1[i1] && arr2[i2]
      if arr1[i1] > arr2[i2]
        merged << arr2[i2]
        i2 += 1 
      else
        merged << arr1[i1]
        i1 += 1 
      end
    elsif arr1[i1]
      return merged + arr1[i1..-1]
    else
      return merged + arr2[i2..-1]
    end
  end
  merged
end

# test cases

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
