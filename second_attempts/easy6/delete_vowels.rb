=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def remove_vowels(arr)
#  arr.map do |word|
#    word.chars.reject { |c| %w(a e i o u).include?(c.downcase) }.join
#  end
#end

#def remove_vowels(arr)
#  arr_idx = 0
#  new_arr = []
#  loop do
#    break if arr_idx == arr.size
#    str = ''
#    str_idx = 0
#    word = arr[arr_idx]
#    loop do
#      break if str_idx == word.length
#      str << word[str_idx] unless %w(a e i o u).include?(word[str_idx].downcase)
#      str_idx += 1
#    end
#    arr_idx += 1
#    new_arr << str
#  end
#  new_arr
#end

def remove_vowels(arr)
  arr.each_with_object([]) do |word, new_arr|
    new_arr << word.delete('aeiouAEIOU')
  end
end

# test cases

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
