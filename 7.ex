defmodule Primes do

  def is_prime(n) do
    !Enum.any?(2..(n-1), fn x -> is_divisible(n, x) end)
  end

  def is_divisible(n, m) do
    rem(n, m) == 0
  end

  def nth_prime(1) do
    2
  end

  def nth_prime(n) do
    last_prime = nth_prime(n - 1)
    nth_prime_helper(last_prime, 1)
  end

  def nth_prime_helper(n, m) do
    if is_prime(n + m) do
      n + m
    else
      nth_prime_helper(n, m + 1)
    end
  end
end

IO.puts Primes.nth_prime(10001)
