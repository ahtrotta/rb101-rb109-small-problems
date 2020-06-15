vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurences(array)
#   hash = Hash.new
# 
#   array.each do |elem| 
#     if hash[elem]
#       hash[elem] += 1
#     else
#       hash[elem] = 1
#     end
#   end
#   hash.each { |key, value| puts "#{key} => #{value}" }
# end

def count_occurences(arr)
  hash = arr.each_with_object(Hash.new(0)) { |auto, hsh| hsh[auto] += 1 }
  hash.each { |key, value| puts "#{key} => #{value}" }
  nil
end

count_occurences(vehicles)
