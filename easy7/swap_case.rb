UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(str)
  str.chars.map do |c|
    if LOWERCASE.include?(c)
      UPPERCASE[LOWERCASE.index(c)]
    elsif UPPERCASE.include?(c)
      LOWERCASE[UPPERCASE.index(c)]
    else
      c
    end
  end.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
