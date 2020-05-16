def swap(str)
  arr = str.split.map do |word|
          word.size > 1 ? word[-1] + word[1..-2] + word[0] : word
        end
  arr.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')
