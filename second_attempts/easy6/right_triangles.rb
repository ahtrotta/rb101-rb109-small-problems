=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def triangle(n)
#  stars = 0
#  until stars > n
#    puts ' ' * (n - stars) + '*' * stars
#    stars += 1
#  end
#end

#def triangle(n)
#  stars = 0
#  loop do
#    break if stars > n
#    (n - stars).times { print ' ' }
#    stars.times { print '*' }
#    puts ''
#    stars += 1
#  end
#end

def triangle(n)
  puts (0..n).map { |i| ' ' * (n - i) + '*' * i }
end
    
# test cases

triangle(5)
triangle(9)
