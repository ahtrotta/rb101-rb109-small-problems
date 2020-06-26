=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def greeting
  print 'What is your name? '
  name = gets.chomp

  if name[-1] == '!'
    puts "HELLO #{name[0...-1].upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

# test cases

greeting
