require 'pry'
def primes_less_than(n)
  potentials = []
  n.times do
    potentials << true
  end
  potentials[0] = false
  primes = []
  prime = 1
  while true
    prime = find_next_prime(potentials, prime, n)
    break unless prime && prime < n
    primes << prime
    i = prime
    while i < n
      potentials[i-1] = false
      i += prime
    end
  end
  return primes
end

def find_next_prime(potentials, last_prime, n)
  p = last_prime
  while p < n
    if potentials[p - 1]
      return p
    else
      p += 1
    end
  end
  false
end

puts primes_less_than(2_000_000).inject(0){|sum,x| sum + x }
