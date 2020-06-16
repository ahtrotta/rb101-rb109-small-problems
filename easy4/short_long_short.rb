def str_aba(a, b)
  a + b + a
end

#def short_long_short(str1, str2)
#  str1.length > str2.length ? str_aba(str2, str1) : str_aba(str1, str2)
#end

def short_long_short(a, b)
  a.length > b.length ? b + a + b : a + b + a
end

puts short_long_short('abc', 'defgh') == 'abcdefghabc'
puts short_long_short('abcde', 'fgh') == 'fghabcdefgh'
puts short_long_short('', 'xyz') == 'xyz'
