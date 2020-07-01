=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def show_multiplicative_average(arr)
  m_avg = arr.inject(:*) / arr.size.to_f
  puts format("The result is %.3f", m_avg)
end

# test cases

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
