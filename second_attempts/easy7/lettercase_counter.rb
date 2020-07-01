=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def letter_case_count(str)
#  { lowercase: str.count('a-z'),
#    uppercase: str.count('A-Z'),
#    neither: str.count('^a-zA-Z') }
#end

#def letter_case_count(str)
#  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
#  str.chars.each do |c|
#    if ('a'..'z').include?(c)
#      hsh[:lowercase] += 1 
#    elsif ('A'..'Z').include?(c)
#      hsh[:uppercase] += 1
#    else
#      hsh[:neither] += 1
#    end
#  end
#  hsh
#end

def letter_case_count(str)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  idx = 0
  loop do
    break if idx == str.size
    if ('a'..'z').include?(str[idx])
      hsh[:lowercase] += 1
    elsif ('A'..'Z').include?(str[idx])
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
    idx += 1
  end
  hsh
end

# test cases

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
