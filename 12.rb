def triangle_number(n)
  n * (n + 1 ) / 2
end

def num_factors(n)
  num = 0
  (1..Math.sqrt(n).floor).each do |i|
    num += 1 if n % i == 0
  end
  return num * 2
end

i = 1
while true
  t = triangle_number(i)
  num_factors = num_factors(t)
  if num_factors >= 500
    puts t
    break
  end
  i += 1
end
