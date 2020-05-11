vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(array)
  hash = Hash.new

  array.each do |elem| 
    if hash[elem]
      hash[elem] += 1
    else
      hash[elem] = 1
    end
  end
  hash.each { |key, value| puts "#{key} => #{value}" }
end

count_occurences(vehicles)
