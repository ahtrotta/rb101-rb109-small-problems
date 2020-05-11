def digit_list(int)
  if int.class != Integer || int <= 0
    'Must supply a positive integer.'
  else
    int.to_s.split('').map { |int_str| int_str.to_i }
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
puts digit_list('hello')
puts digit_list(0)
puts digit_list(-5)
