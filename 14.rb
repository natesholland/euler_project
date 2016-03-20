def collatz(n)
  steps = 1
  while n > 1
    if n % 2 == 0
      n = n / 2
      steps += 1
    else
      n = (3 * n) + 1
      steps += 1
    end
  end
  steps
end

max = 0
max_start = 0

i = 2
while i < 1_000_000
  puts i
  steps = collatz(i)
  if steps > max
    max = steps
    max_start = i
  end
  i += 1
end

puts max_start
