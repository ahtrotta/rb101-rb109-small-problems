def substrings(str)
  substrings = []
  (0...str.length).each do |i_start|
    (i_start...str.length).each do |i_end|
      substrings << str[i_start..i_end]
    end
  end
  substrings
end

def palindromes(str)
  substrings(str).select { |s| (s.length > 1) && (s == s.reverse) }
end

p palindromes('abcd')
puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
