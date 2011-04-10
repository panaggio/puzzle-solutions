#!/usr/bin/env ruby

# Straightforward solution. Implements the most simple algorithm that can be
# imagined for the problem, without making more than 2 'mod' operations per
# iteration.
#
# It takes O(n) 'mod' and '==' operations to run (exactly 2n operations)

n = gets.to_i

1.upto(n) do |i|
  if i%3 == 0
    if i%5 == 0
      puts 'Hop'
    else
      puts 'Hoppity'
    end
  elsif i%5 == 0
    puts 'Hophop'
  end
end
