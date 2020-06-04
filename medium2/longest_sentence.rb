f = File.open('./frankenstein.txt', 'r')

# extract text into a giant string
line_arr = []
f.each_line do |line|
  line_arr << line.chomp
end
str = line_arr.join(' ')

# split into sentences (keeping punctuation)
sent_arrs = str.split(/([.!?])/).map { |sent| sent.strip }

# detemine word length of each sentence, keeping track of index
size_with_index = (0...sent_arrs.size).map { |i| [sent_arrs[i].split.size, i] }
length, idx = size_with_index.sort_by { |arr| arr[0] }[-1]

puts "\nThe longest sentence has #{length} words:\n\n"
puts sent_arrs[idx] + sent_arrs[idx + 1]

f.close
