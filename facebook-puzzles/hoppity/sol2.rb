#!/usr/bin/env ruby

# This executes in O(1) math and comparison operations, and as much I/O as
# needed. I/O could be refined, but it wouldn't be any better solution from
# an algorithmic point of view.
#
# It uses 3 '%', 2 '/' and 2 '-' to execute. This analysis ignore a hash fetch.
# This fetch may be unnecessary anyway.

# FIXME: refactor
def m(x)
  h = { 3 =>  0, 5 =>  1, 6 =>  2, 9 =>  3, 10 => 4, 12 => 5, 15 => 6 }

  k = [x - x%3, x - x%5].max

  h[k]
end

n = gets.to_i

arr = %w(Hoppity Hophop Hoppity Hoppity Hophop Hoppity Hop)

q, r = n/15, n%15

q.times { puts arr }

x = m(r)
puts arr[0..x] if x
