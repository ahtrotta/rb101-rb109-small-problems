=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- convert the array to a nested array


=end

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

def merge_sort(arr)
  return arr if arr.size == 1
  merge(merge_sort(arr[0...(arr.size / 2)]), merge_sort(arr[(arr.size / 2)..-1]))
end

# test cases

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
