def substrings(str)
  substrings = []
  (0...str.length).each do |i_start|
    (i_start...str.length).each do |i_end|
      substrings << str[i_start..i_end]
    end
  end
  substrings
end

puts substrings('abcde')
puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
