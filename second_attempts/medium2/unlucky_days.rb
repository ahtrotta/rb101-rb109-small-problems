=begin

PROBLEM:

INPUT(S):

OUTPUTS(S):

ALGORITHM:
- select from array of months those that have five fridays
  - iterate through each day of the month and check if friday

=end
require 'date'

def friday_13th(year)
  (1..12).select { |mon| Date.new(year, mon, 13).friday? }.size
end

def five_fridays(year)
  mon_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  mon_days[1] += 1 if Date.new(year).leap?

  five_fris = (1..12).select do |mon|
    fridays = (1..mon_days[mon - 1]).select do |day|
      Date.new(year, mon, day).friday?
    end
    fridays.size == 5
  end

  five_fris.size
end 


# test cases

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
puts five_fridays(2020) == 4
puts five_fridays(1952) == 4
