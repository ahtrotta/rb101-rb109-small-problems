=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def tip_calculator
  print 'What is the bill? '
  bill = gets.chomp.to_i

  print 'What is the tip percentage? '
  tip = gets.chomp.to_f / 100

  total = (bill * tip) + bill

  puts "\nThe tip is $#{format("%.2f", (bill * tip))}"
  puts "The total is $#{format("%.2f", total)}"
end

# test cases

tip_calculator
