def cent_suffix(num)
  case num
  when 1    then 'st'
  when 2    then 'nd'
  when 3    then 'rd'
  else 'th'
  end
end

def century(year)
  cent = ((year - 1) / 100) + 1
  end_str = if (10..13).cover?(cent % 100)
              'th'
            else
              cent_suffix(cent % 10)
            end
  "#{cent}#{end_str}"
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
puts century(1999) == '20th'

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)
