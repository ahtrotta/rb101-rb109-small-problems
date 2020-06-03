def diamond(n)
  stars = (1..n).select { |i| i.odd? }
  stars += stars[0..-2].reverse
  max = stars.max
  stars.each do |num|
    puts(' ' * ((max - num) / 2) + '*' * num)
  end
end

diamond(9)
diamond(13)
