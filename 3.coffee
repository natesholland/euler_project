num = 600851475143

dividesIntoN = (n, m) ->
  n % m == 0

generatePrimeNumbersBelowN = (n) ->
  for i in [2..n-1]
    isPrime = true
    for j in [2..i-1]
      isPrime = false if i % j == 0
      break if not isPrime
    if isPrime
      if dividesIntoN(num, i)
        console.log i

generatePrimeNumbersBelowN(num)

# 6857 is the last one before this hangs for a long time
