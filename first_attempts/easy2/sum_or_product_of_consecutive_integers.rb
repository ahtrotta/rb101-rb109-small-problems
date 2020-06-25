def prod(n)
  return 1 if n == 0
  n * prod(n - 1)
end

def add(n)
  return 0 if n == 0
  n + add(n - 1)
end

integer = nil

loop do
  puts '>> Please enter an integer greater than 0:'
  integer = gets.chomp.to_i

  break if integer.to_i > 0
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
response = gets.chomp

loop do
  if response == 's'
    sum = (1..integer.to_i).inject(:+)
    puts "The sum of the integers between 1 and #{integer} is #{sum}."
    break
  elsif response == 'p'
    product = (1..integer.to_i).inject(:*)
    puts "The product of the integers between 1 and #{integer} is #{product}."
    break
  else
    puts '>> Incorrect input, please try again.'
  end
end
