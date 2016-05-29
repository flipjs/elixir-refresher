defmodule Recursion do
  def sum([head | tail]), do: sum(tail, 0 + head)
  def sum([], acc), do: acc
  def sum([head | tail], acc), do: sum(tail, acc + head)
  def square([head | tail]), do: square(tail, [] ++ [head * head])
  def square([], acc), do: acc
  def square([head | tail], acc), do: square(tail, acc ++ [head * head])
end

IO.puts(Recursion.sum([1,2,3,4,5]))
IO.inspect(Recursion.square([1,2,3,4,5]))

# Elixir has built-in functions for manipulating lists
# IO.puts Enum.reduce([1,2,3], 0, fn (x, acc) -> x + acc end)
# IO.inspect Enum.map([1,2,3], fn (x) -> x * x end)

