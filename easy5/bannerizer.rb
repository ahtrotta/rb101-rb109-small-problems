def print_in_box(str)
  width = str.length + 2
  edge = '+' + ('-' * width) + '+'
  buffer = '|' + (' ' * width) + '|'
  message = '| ' + str + ' |'
  puts "#{edge}\n#{buffer}\n#{message}\n#{buffer}\n#{edge}"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
