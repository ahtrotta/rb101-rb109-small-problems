def crunch(str)
  new_str = ''
  str.each_char do |char|
    new_str << char unless char == new_str[-1]
  end
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('') == ''
