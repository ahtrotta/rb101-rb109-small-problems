=begin

problem:
print the string argument as many times as the integer indicates

input(s):
string and integer

outputs(s):
returns nil
outputs string multiple times

algorithm:

=end

#def repeat(str, int)
#  int.times { puts str }
#  nil
#end

#def repeat(str, int)
#  counter = int
#  loop do
#    puts str
#    counter -= 1
#    break if counter < 1
#  end
#end

def repeat(str, int)
  puts (0...int).map { str }
end

# test cases

repeat('Hello', 3)
