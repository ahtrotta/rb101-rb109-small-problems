#def stringy(int, opt=1)
#  string = ''
#  int.times do |index|
#    string << '1' if index % 2 == (1 - opt)
#    string << '0' if index % 2 == (0 + opt)
#  end
#  string
#end

def stringy(int, opt=1)
  base = (opt == 1 ? '1' : '0')
  chunk = (opt == 1 ? '10' : '01')
  return '' if int == 0
  return base if int == 1
  chunk + stringy(int - 2, opt)
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(6, 0)
puts stringy(4, 0)
