=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
create an array of lines
- stars = input num (n)
- spaces = 0
- (n / 2)

ALGORITHM (OUTLINE):
- initialize empty array
- start inner spaces at n - 2
- outer spaces at 0
- loop from 0 to n / 2
  - line gets outer spaces + star + inner spaces + star + outer spaces
  - add line to array
  - special case last line has only one star
- print array


=end

#def diamond(n)
#  arr = (0..(n / 2)).map do |i|
#    ' ' * i + '*' * (n - (2 * i))
#  end
#  puts arr[1..-1].reverse + arr
#end

#def diamond(n)
#  arr = []
#  innr = n - 2
#  out = 0
#  loop do
#    break if out > n / 2
#    if innr < 1
#      line = ' ' * out + '*' + ' ' * out
#      arr << line
#    else
#      line = ' ' * out + '*' + ' ' * innr + '*'
#      arr << line
#    end
#    out += 1
#    innr -= 2
#  end
#  puts arr[1..-1].reverse + arr
#end

def diamond(n)
  lines = (0..(n / 2)).map do |i|
    i == n / 2 ? ' ' * i + '*' : ' ' * i + '*' + ' ' * ((n - 2) - (2 * i)) + '*'
  end
  puts lines[1..-1].reverse + lines
end

# test cases

diamond(1)
diamond(3)
diamond(9)
