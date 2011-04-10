#!/usr/bin/env ruby

# The square of the sum of the n first natural numbers:
# s1 = (1 + 2 + ... + n-1 + n)^2
#    = (n(n+1)/2)^2

def s1(n)
  (n*(n+1)/2)**2
end

# The sum of the squares of the first n natural numbers:
# s2 = (1^2 + 2^2 + ... (n-1)^2 + n^2)
#    = n(n+1)(2n+1)/6

def s2(n)
  n*(n+1)*(2*n+1)/6
end

n = ARGV[0].to_i
puts s1(n) - s2(n)
