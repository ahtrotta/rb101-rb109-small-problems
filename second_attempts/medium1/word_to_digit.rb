=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- split string into sentences
- map sentences
  - split each sentence into words
  - initialize new string
  - iterate through words
    - if DIGIT
      - convert to integer
      - append to new string 
    - if not DIGIT
      - append to new string with space
  - return new string
- join sentences with period and space and add period to end if necessary
- split result into words
- check for sequence of 10 digits in a row
- format that sequence

=end

DIGITS = %w(zero one two three four five six seven eight nine)

#def word_to_digit(str)
#  sents = str.split('.')
#  arr = sents.map do |sent|
#    sent.split.map do |word|
#      DIGITS.include?(word) ? DIGITS.index(word) : word
#    end.join(' ')
#  end.join('. ')
#  arr << '.' if str[-1] == '.'
#end

# futher exploration
def format_phone_number(str)
  arr = str.split.map do |word|
    if word.chars.all? { |c| %w(0 1 2 3 4 5 6 7 8 9).include?(c) } &&
       word.length == 10
      '(' + word[0..2] + ') ' + word[3..5] + '-' + word[6..9]
    else
      word
    end
  end
  arr.join(' ')
end

def word_to_digit(str)
  sents = str.split('.')
  sents = sents.map do |sent|
    new_str = ''
    sent.split.each do |word|
      if DIGITS.include?(word.downcase)
        new_str << DIGITS.index(word.downcase).to_s
      else
        new_str << word + ' '
      end
    end
    format_phone_number(new_str)
  end
  final = sents.join('. ')
  final << '.' if str[-1] == '.'
end

# test cases

#puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
puts word_to_digit('Please call me at Five five FIVE one two three four. Thanks.') == 'Please call me at 5551234. Thanks.'
puts word_to_digit('Please call me at nine seven eight Five five FIVE one two three four. Thanks.') == 'Please call me at (978) 555-1234. Thanks.'
p word_to_digit('Please call me at nine seven eight Five five FIVE one two three four. Thanks. Here are some other numbers: 1 2 3.') == 'Please call me at (978) 555-1234. Thanks. Here are some other numbers: 1 2 3.'
