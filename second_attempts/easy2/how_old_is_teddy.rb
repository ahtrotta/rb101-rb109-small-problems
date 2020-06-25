=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

#def teddy_age
#  puts (20..200).to_a.sample
#end

#def teddy_age
#  puts rand(20..200)
#end

# further explorations
def teddy_age
  puts ">> What is your name?"
  name = gets.chomp
  name = 'Teddy' if name == ''
  puts "#{name} is #{rand(20..200)} years old!"
end
  

# test cases

teddy_age
teddy_age
teddy_age
