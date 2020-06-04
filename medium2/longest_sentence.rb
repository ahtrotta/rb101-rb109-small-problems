f = File.open('./test.txt', 'r')

line_arr = []
f.each_line do |line|
  line_arr << line.chomp
end
str = line_arr.join(' ')
p str

f.close
