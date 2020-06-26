=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def odd_numbers
#  puts (1..99).select(&:odd?)
#end

#def odd_numbers
#  1.upto(99).each { |i| puts i if i.odd? }
#end

#def odd_numbers
#  count = 1
#  loop do
#    puts count
#    count += 2
#    break if count > 99
#  end
#end

def odd_numbers
  100.times { |i| puts i if i.odd? }
end


# test cases

odd_numbers
