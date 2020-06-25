=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

#def count_occurrences(arr)
#  h = arr.each_with_object(Hash.new(0)) { |el, hsh| hsh[el] += 1 }
#  h.each { |el, val| puts "#{el} => #{val}" }
#end

#def count_occurrences(arr)
#  h = arr.uniq.map { |el| [el, arr.count(el)] }.to_h
#  h.each { |el, val| puts "#{el} => #{val}" }
#end

#def count_occurrences(arr)
#  hsh = {}
#  count = 0
#  loop do
#    vehicle = arr[count]
#    if hsh.has_key?(vehicle)
#      hsh[vehicle] += 1
#    else
#      hsh[vehicle] = 1
#    end
#    count += 1
#    break if count == arr.size
#  end
#  hsh.each { |el, val| puts "#{el} => #{val}" }
#end

def count_occurrences(arr)
  arr.map!(&:downcase) 
  h = arr.uniq.map { |el| [el, arr.count(el)] }.to_h
  h.each { |el, val| puts "#{el} => #{val}" }
end

# test cases

count_occurrences(vehicles).inspect
