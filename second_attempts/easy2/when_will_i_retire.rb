=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

require 'date'

def retire
  print 'What is your age? '
  age = gets.chomp.to_i

  print 'At what age would you like to retire? '
  retire_age = gets.chomp.to_i

  year = DateTime.now.year
  diff = retire_age - age

  puts "\nIt's #{year}. You will retire in #{year + diff}."
  puts "You only have #{diff} years of work to go!"
end

# test cases

retire
