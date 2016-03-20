fizbuz_sum = 0
for i in [1..1000]
  if i % 3 == 0 || i % 5 == 0
    fizbuz_sum += i

console.log fizbuz_sum
