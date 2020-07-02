=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

def substrings(str)
  return [] if str == ''
  substrings_at_start(str) + substrings(str[1..-1])
end

def substrings_at_start(str)
  (1..str.length).map { |i| str[0, i] }
end

#def palindromes(str)
#  substrings(str).select do |sub_str|
#    sub_str == sub_str.reverse && sub_str.length > 1
#  end
#end

#def palindromes(str)
#  substrings(str).each_with_object([]) do |sub_str, arr|
#    arr << sub_str if sub_str == sub_str.reverse && sub_str.length > 1
#  end
#end

#def palindromes(str)
#  arr = []
#  i = 0
#  sub_strs = substrings(str)
#  loop do
#    break if i == sub_strs.size
#    if sub_strs[i] == sub_strs[i].reverse && sub_strs[i].length > 1
#      arr << sub_strs[i]
#    end
#    i += 1
#  end
#  arr
#end

def palindromes(input)
  if input.class == String
    input = substrings(input.delete('^a-zA-Z0-9').downcase)
  end
  return input if input == []
  sub_str = input.shift
  if sub_str == sub_str.reverse && sub_str.length > 1
    [sub_str] + palindromes(input)
  else
    palindromes(input)
  end
end

# test cases

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
p palindromes('M ad$am') == ['madam', 'ada']
