def reverse_words(string)
  output = string.split.map do |word|
    word.length > 4 ? word.split('').reverse.join : word
  end
  output.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
