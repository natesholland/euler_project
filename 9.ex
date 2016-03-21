defmodule Pythag do

  def tripple?(a, b, c) do
    if square(a) + square(b) == square(c) do
      IO.puts "#{a} #{b} #{c}"
      true
    else
      false
    end
  end

  def square(x) do
    x * x
  end

  def sum?(a, b, c, n) do
    a + b + c == n
  end

  def good_tripple?(a, b, c, n) do
    sum?(a, b, c, n) and tripple?(a, b, c)
  end

end

defmodule RC do
  def comb(0, _), do: [[]]
  def comb(_, []), do: []
  def comb(m, [h|t]) do
    (for l <- comb(m-1, t), do: [h|l]) ++ comb(m, t)
  end
end

{m, n} = {3, 500}
list = for i <- 1..n, do: i
possibilities = RC.comb(m, list)
IO.puts "about to start the search process"
Enum.each(possibilities, fn x ->
  [a, b, c] = x
  Pythag.good_tripple?(a, b, c, 1000)
 end)
