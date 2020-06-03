require 'pry'

NUMBER_WORDS = %w(zero one two three four five six seven eight nine)
NUMBERS = (0..9).map { |i| [NUMBER_WORDS[i], i] }.to_h

def word_to_digit(str)
  arr = str.split.map do |word|
    word_arr = word.partition(/[^a-z0-9]/i).reject { |str| str == '' }
    word_arr.map! do |part|
      NUMBER_WORDS.include?(part.downcase) ? NUMBERS[part] : part
    end
    word_arr.join
  end
  arr.join(' ')
end

binding.pry
    
p word_to_digit('Please call me at five five five one two three four. Thank you.')
