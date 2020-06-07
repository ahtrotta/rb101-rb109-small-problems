# This was my first version
#
# def merge(arr1, arr2)
#   arr1, arr2 = arr1.clone, arr2.clone
#   result = []
#   until arr1.empty? && arr2.empty?
#     if arr1.empty?
#       result += arr2
#       break
#     elsif arr2.empty?
#       result += arr1
#       break
#     else
#       result << (arr1[0] < arr2[0] ? arr1.shift : arr2.shift)
#     end
#   end
#   result
# end

def merge(arr1, arr2)
  idx1 = 0
  idx2 = 0
  result = []
  loop do
    return result if idx1 == arr1.size && idx2 == arr2.size
    if !(arr2[idx2])
      return result += arr1[idx1..-1]
    elsif !(arr1[idx1])
      return result += arr2[idx2..-1]
    elsif arr1[idx1] <= arr2[idx2]
      result << arr1[idx1]
      idx1 += 1
      next
    elsif arr1[idx1] > arr2[idx2]
      result << arr2[idx2]
      idx2 += 1
      next
    end
  end
end


arr1 = [1, 5, 9]
arr2 = [2, 6, 8]
p merge(arr1, arr2) == [1, 2, 5, 6, 8, 9]
p arr1 == [1, 5, 9]
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
