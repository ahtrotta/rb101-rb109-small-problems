=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- loop until no switch
  - iterate through array and switch values if 'left' is larger than 'right'

=end

def bubble_sort!(arr)
  count = 0

  loop do
    i = 0
    switch = false

    loop do
      break if i == arr.size - 1 - count
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i] 
        switch = true
      end
      i += 1
    end

    count += 1
    break unless switch
  end
  arr
end

# test cases

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

