def star(n)
  spaces = [0, (n / 2) - 1]
  n.times do |i|
    if i == (n / 2)
      puts '*' * n
    else
      puts ' ' * spaces[0] + '*' + ' ' * spaces[1] + '*' +
           ' ' * spaces[1] + '*' + ' ' * spaces[0]
      spaces[0], spaces[1] = spaces[0] + 1, spaces[1] - 1 if i < (n / 2) - 1
      spaces[0], spaces[1] = spaces[0] - 1, spaces[1] + 1 if i > (n / 2)
    end
  end
end

star(7)
star(9)
