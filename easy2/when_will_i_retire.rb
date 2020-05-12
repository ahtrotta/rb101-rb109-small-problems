require 'date'

print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
goal = gets.chomp.to_i

work_years = goal - age
current_year = DateTime.now.year
retirement_year = current_year + work_years

puts <<-MSG
\nIt's #{current_year}. You will retire in #{retirement_year}.
You only have #{work_years} years of work to go!
MSG
