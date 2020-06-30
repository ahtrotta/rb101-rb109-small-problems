=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- split string into array of 80-char lines

=end

def multi_line_string(str)
  str_copy = str.dup
  arr = []
  while str_copy.length >= 76
    arr << str_copy.slice!(0, 76)
  end
  str_copy = str_copy + ' ' * (76 - str_copy.length)
  arr << str_copy
end

#def print_in_box(str)
#  tp_btm = '+' + '-' * (str.size + 2) + '+'
#  buff = '|' + ' ' * (str.size + 2) + '|'
#  line = '| ' + str + ' |'
#  puts "#{tp_btm}\n#{buff}\n#{line}\n#{buff}\n#{tp_btm}"
#end

def print_in_box(str)
  if str.length <= 76
    tp_btm = '+' + '-' * (str.size + 2) + '+'
    buff = '|' + ' ' * (str.size + 2) + '|'
    line = '| ' + str + ' |'
    puts [tp_btm, buff, line, buff, tp_btm]
  else
    tp_btm = '+' + '-' * 78 + '+'
    buff = '|' + ' ' * 78 + '|'
    lines = multi_line_string(str).map { |line| '| ' + line + ' |' }
    puts [tp_btm, buff] + lines + [buff, tp_btm]
  end
end


# test cases

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('Here is another relatively long string that I will use to further test the method that I just wrote. I am getting tired of writing all of these long strings if I am being honest.')
