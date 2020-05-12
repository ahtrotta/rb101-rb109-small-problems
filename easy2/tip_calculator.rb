print 'What is the bill? '
bill = gets.chomp.to_f

print 'What is the tip percentage? '
tip_percent = gets.chomp.to_f / 100

tip = bill * tip_percent
total = tip + bill

tip = sprintf('%.2f', tip)
total = sprintf('%.2f', total)

puts "\nThe tip is $#{tip}"
puts "The total is $#{total}" 
