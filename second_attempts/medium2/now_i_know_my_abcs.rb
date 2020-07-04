=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- iterate through blocks
  - return false if word contains both letters of block
- return true

=end

BLOCKS = [%w(b o), %w(x k), %w(d q), %w(c p), %w(n a),
          %w(g t), %w(r e), %w(f s), %w(j w), %w(h u),
          %w(v i), %w(l y), %w(z m)]

def block_word?(word)
  chars = word.chars.map(&:downcase)
  BLOCKS.each do |block|
    return false if chars.include?(block[0]) && chars.include?(block[1])
  end
  true
end

# test cases

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
