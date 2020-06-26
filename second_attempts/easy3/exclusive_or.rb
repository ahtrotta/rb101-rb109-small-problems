=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def xor?(cond1, cond2)
#  (cond1 && !cond2) || (!cond1 && cond2)
#end

#def xor?(cond1, cond2)
#  (cond1 || cond2) && !(cond1 && cond2)
#end

#def xor?(cond1, cond2)
#  cond1 ? (cond2 ? false : true) : (cond2 ? true : false)
#end

def xor?(cond1, cond2)
  if cond1
    cond2 ? false : true
  else
    cond2 ? true : false
  end
end

# test cases

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
