def letter_percentages(str)
  low = (str.count('a-z').to_f / str.size) * 100
  up = (str.count('A-Z').to_f / str.size) * 100
  nthr = 100 - (low + up)
  { lowercase: low.round(2), uppercase: up.round(2), neither: nthr.round(2) }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
