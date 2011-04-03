#!/usr/bin/env ruby

# the smallest number x that can be divided by each of the numbers from 1 to n
# is the product of all the primes between 1 and n powered by the greatest
# power they appear in that range

n = ARGV[0].to_i

primes = Hash.new(0)

x = (2..n).reduce(1) do |total, i|
  residue = i

  primes.each do |prime, t|
    t.times do
      break if residue % prime != 0
      residue /= prime
    end
  end

  # add prime to primes hash id it's not already there
  # or add a new power of it to the hash
  primes[residue] += 1 if residue != 1

  total *= residue
end

puts x
