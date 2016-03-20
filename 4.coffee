isPalindrome = (x) ->
  x = x.toString()
  firstHalf = x[0..Math.floor(x.length/2)-1]
  secondHalf = x[Math.ceil(x.length/2)..x.length - 1]
  firstHalf == secondHalf.split("").reverse().join ""

maxPalindrome = 0

for i in [100..999]
  for j in [100..999]
    if isPalindrome(i * j)
      if (i * j) > maxPalindrome
        maxPalindrome = i * j

console.log maxPalindrome
