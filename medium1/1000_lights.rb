require 'pry'

def switch_lights(n)
  lights = (1..n).map { |i| [i, :off] }.to_h
  (1..n).each do |num|
    counter = num
    while counter <= n
      lights[counter] = (lights[counter] == :off) ? :on : :off
      counter += num
    end
  end
  lights.select { |_, state| state == :on }.keys
end

p switch_lights(1000)
