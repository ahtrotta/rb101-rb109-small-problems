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

def merge_sort(arr)
  half = (arr.size / 2)
end

merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

