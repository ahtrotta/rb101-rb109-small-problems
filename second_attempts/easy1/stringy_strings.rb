=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def stringy(int)
#  (1..int).map { |i| i.odd? ? '1' : '0' }.join
#end

#def stringy(int)
#  str = ''
#  int.times do |i|
#    str << '1' if (i + 1).odd?
#    str << '0' if i.odd?
#  end
#  str
#end

#def stringy(int)
#  switch = true
#  str = ''
#  until int == 0
#    if switch
#      str << '1'
#    else
#      str << '0'
#    end
#    switch = !switch
#    int -= 1
#  end
#  str
#end

# further exploration
def stringy(int, first=1)
  (0...int).map { |i| (i + first).odd? ? 1 : 0 }.join
end

# test cases

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(4, 0) == '0101'
