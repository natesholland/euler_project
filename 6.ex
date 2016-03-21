defmodule Six do
  def sum_squares_to(n) do
    if n == 1 do
      1
    else
      square(n) + sum_squares_to(n-1)
    end
  end

  def square(n) do
    n * n
  end

  def sum_to(n) do
    if n == 1 do
      1
    else
      n + sum_to(n - 1)
    end
  end
end

n = 100

IO.puts Six.square(Six.sum_to(n)) - Six.sum_squares_to(n)
