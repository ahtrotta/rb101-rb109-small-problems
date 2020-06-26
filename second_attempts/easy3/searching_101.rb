=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

nums = { 1 => '1st', 2 => '2nd', 3 => '3rd', 4 => '4th', 5 => '5th' }

arr = (1..5).map do |i|
  puts "==> Enter the #{nums[i]} number:"
  gets.chomp.to_i
end

puts '==> Enter the last number:'
if arr.include?(num = gets.chomp.to_i)
  puts "The number #{num} appears in #{arr}."
else
  puts "The number #{num} does not appear in #{arr}."
end

# test cases

