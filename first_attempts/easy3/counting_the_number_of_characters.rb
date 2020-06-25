print 'Please write a word or multiple words: '
input = gets.chomp

# count = input.split.map(&:size).inject(:+)
count = input.delete(' ').size

puts "There are #{count} characters in \"#{input}\"."
