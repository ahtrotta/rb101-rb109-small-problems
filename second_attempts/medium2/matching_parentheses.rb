=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- remove all other characters besides ( and )
- delete '()' until there aren't any left
- return true if empty string else return false

=end

def balanced?(str)
  parens = str.delete('^()')
  i = 0
  loop do
    break unless parens.gsub!('()', '')
  end
  parens.empty?
end

# test cases

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
