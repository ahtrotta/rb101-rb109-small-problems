=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- split string into sentences and store in array
- sort array by sentence length
- return length of last sentence

=end

#f = File.open('frankenstein.txt')
f = File.open('four_score.txt')

str = ''
f.each_line { |line| str << line.chomp + ' ' }

arr = str.split('.').map { |sent| sent.split('!') }.flatten.map { |sent| sent.split('?') }.flatten


longest = arr.sort_by { |sentence| sentence.split.size }.last.strip
puts ">> The longest sentence is #{longest.split.size} words:"
puts "\n#{longest}"
