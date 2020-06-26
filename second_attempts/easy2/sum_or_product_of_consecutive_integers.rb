=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def sum_or_prod
  int = nil
  loop do
    puts '>> Please enter an integer greater than 0:'
    int = gets.chomp.to_i
    break if int > 0
  end

  opr = nil
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
    opr = gets.chomp.downcase
    break if opr == 's' || opr == 'p'
  end

  if opr == 's'
    puts "The sum of the integers between 1 and #{int} is #{1.upto(int).sum}."
  else
    puts "The product of the integers between 1 and #{int} is " \
         "#{2.upto(int).reduce(:*)}."
  end
end

# test cases

sum_or_prod
