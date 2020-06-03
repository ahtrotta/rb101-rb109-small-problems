=begin
  for diamond_outline(5)
  line1: 2 spaces, 1 star
  line2: 1 space, 1 star, 1 space, 1 star
  line3: 1 star, 2 spaces, 1 star
  line4: 1 space, 1 star, 1 space, 1 star
  line5: 2 spaces, 1 star
  indexes of spaces per line = [[0, 1], [0, 2], [1, 2]]
  inexes of stars per line = [[2], [1, 3], [0, 4]]

  for diamond_outline(7)
  line1: 3 spaces, 1 star, 0 space
  line2: 2 spaces, 1 star, 1 space, 1 star
  line3: 1 space, 1 star, 3 spaces, 1 star
  line4: 0 spaces, 1 star, 5 spaces, 1 star
  line5: 1 space, 1 star, 3 spaces, 1 star
  line6: 2 spaces, 1 star, 1 space, 1 star
  line7: 3 spaces, 1 star

=end

def diamond(n)
  stars = (1..n).select { |i| i.odd? }
  stars += stars[0..-2].reverse
  max = stars.max
  stars.each do |num|
    puts(' ' * ((max - num) / 2) + '*' * num)
  end
end

def diamond_outline(n)
  spaces = [(n / 2), 0]
  first_half = true
  n.times do |i|
    if i == 0 || i == (n - 1)
      str = ' ' * spaces[0] + '*'
      spaces[0] -= 1
      spaces[1] += 1
    else
      str = ' ' * spaces[0] + '*' + ' ' * spaces[1] + '*'
      if first_half
        spaces[0] -= 1
        spaces[1] += 2
      else
        spaces[0] += 1
        spaces[1] -= 2
      end
    end
    
    puts str
    first_half = false if i == (n / 2) - 1
  end
  nil
end

diamond(9)
diamond(13)

diamond_outline(5)
diamond_outline(9)
diamond_outline(19)
