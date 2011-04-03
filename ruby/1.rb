#!/usr/bin/env ruby

s = (1...(ARGV[0].to_i)).inject(0) do |t,n|
  t += n if n % 3 == 0 or n % 5 == 0
  t
end

puts s
