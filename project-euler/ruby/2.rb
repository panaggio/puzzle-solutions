#!/usr/bin/env ruby

s = 0
max = ARGV[0].to_i

n_i, n_ii = 1, 2

while n_i < max
  s += n_i if n_i.even?
  n_i, n_ii = n_ii, n_i + n_ii
end

puts s
