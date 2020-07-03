=begin

PROBLEM:
- bank of switches, each connected to a light, labeled 1 to n. n times go through every switch and flip, skipping no switches the first time, every other switch the second time, every third switch the third time, etc

INPUT(S):
- an integer n

OUTPUTS(S):
- an array of switches that are left on

ALGORITHM:
- store switches in array as boolean
- n times go through all switches
  - on first iteration flip switch if switch index + 1 % 1 == 0
  - on second flip if switch index + 1 % 2 == 0
  - etc
- iterate through lights array and add the index + 1 of each light thats on to a new array

ALGORITHM2:
- store switches in hash { # => bool }
- same as above

=end

#def lights(n)
#  lights = (1..n).to_a.map { |_| false }
#  n.times do |i|
#    counter = 0
#    loop do
#      break if counter == lights.size
#      lights[counter] = !lights[counter] if (counter + 1) % (i + 1) == 0
#      counter += 1
#    end
#  end
#  lights_on = []
#  lights.each_with_index { |bool, i| lights_on << (i + 1) if bool }
#  lights_on
#end

def lights(n)
  lights = (1..n).to_a.map { |i| [i, false] }.to_h
  n.times do |i|
    lights.each do |num, state|
      lights[num] = !state if num % (i + 1) == 0
    end
  end
  lights.select { |num, state| state }.keys
end


# test cases

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000)
