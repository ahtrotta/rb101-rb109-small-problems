def decrease(counter)
  counter[0] -= 1
end

counter = [10]

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

# re-factored

10.downto(1) { |n| puts n }
puts 'LAUNCH!'
