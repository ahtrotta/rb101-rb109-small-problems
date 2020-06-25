VOWELS = %w(a e i o u A E I O U)

def remove_vowels(str_arr)
  str_arr.map do |str|
    str.chars.reject { |c| VOWELS.include?(c) }.join
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

puts remove_vowels(%w(green YELLOW black white))
puts remove_vowels(%w(ABC AEIOU XYZ))
