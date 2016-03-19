#!/usr/bin/ruby

def even?(n)
  n % 2 == 0
end

def sum_even_fib(limit)
  sum = 0
  f1 = 1
  f2 = 1
  while true
    temp = f2
    f2 = f1 + f2
    f1 = temp
    break if f2 > limit
    sum += f2 if even?(f2)
  end
  return sum
end

puts sum_even_fib(4_000_000)
