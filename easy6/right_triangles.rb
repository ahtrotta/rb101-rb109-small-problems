def triangle(num)
  num.times do |i|
    puts ' ' * (num - (i + 1)) + '*' * (i + 1)
  end
end

triangle(5)
triangle(9)
