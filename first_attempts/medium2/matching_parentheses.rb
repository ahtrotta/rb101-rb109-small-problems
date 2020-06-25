TOKENS = %w(( ) [ ] { } ' ").freeze

def balanced?(str)
  parens = str.chars.select { |c| TOKENS.include?(c) }.join
  until parens.empty?
    arr = []
    arr.push(parens.gsub!('()', ''),
             parens.gsub!('[]', ''),
             parens.gsub!('{}', ''),
             parens.gsub!('""', ''),
             parens.gsub!('()', ''))
    break unless arr.any?
  end
  parens.empty?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('st[ri{ng}dthe]') == true
p balanced?('"her(e i[s a] st)ring"') == true
p balanced?('the " not working() []') == false
