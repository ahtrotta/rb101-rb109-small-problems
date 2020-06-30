=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

NUMBERS = %w(zero one two three four five six seven eight nine ten) +
          %w(eleven twelve thirteen fourteen fifteen sixteen) +
          %w(seventeen eighteen nineteen)

#def alphabetic_number_sort(arr)
#  arr.sort_by { |el| NUMBERS[el] }
#end

# further exploration
def alphabetic_number_sort(arr)
  arr.sort do |a, b|
    NUMBERS[a] <=> NUMBERS[b]
  end
end

# test cases

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
