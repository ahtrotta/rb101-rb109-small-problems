ALPHABET = 'a'..'z'
=begin
def cleanup(str)
  str.gsub(/[^a-z]/, ' ').squeeze(' ')
=end

def cleanup(str)
  new_str = ''
  str.chars.each do |c|
    if ALPHABET.include?(c)
      new_str << c
    else
      new_str << ' '
    end
  end
  new_str.squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
