NUMBER_WORDS = %w(zero one two three four five six seven eight nine)
NUMBERS = (0..9).map { |i| [NUMBER_WORDS[i], i] }.to_h

def word_to_digit(str)
  arr = str.split.map do |word|
    word_arr = word.partition(/[^a-z0-9]/i).reject { |s| s == '' }
    word_arr.map! do |part|
      NUMBER_WORDS.include?(part.downcase) ? NUMBERS[part] : part
    end
    word_arr.join
  end
  arr.join(' ')
end

# Further Exploration

def to_phone_no(arr)
  arr.insert(6, '-')
  arr.insert(3, ') ')
  arr.insert(0, '(')
end

def word_to_digit2(str)
  arr = []
  seq_nums = []
  last_num = false
  str.split.each do |word|
    word_arr = word.partition(/[^a-z0-9]/i).reject { |s| s == '' }
    new_arr = word_arr.map do |part|
      NUMBER_WORDS.include?(part.downcase) ? NUMBERS[part] : part
    end
    new_word = new_arr.join
    if new_word == word
      if last_num
        seq_nums = to_phone_no(seq_nums) if seq_nums.size == 10
        arr.push(seq_nums.join, new_word)
      else
        arr << new_word
      end
      last_num = false
    else
      seq_nums << new_word
      last_num = true
    end
  end
  arr.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thank you.')
p word_to_digit2('Please call me at six seven eight five five five one two three four. Thank you.')
