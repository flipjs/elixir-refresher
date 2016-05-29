defmodule Recursion do
  def count(0), do: IO.puts "All done!"
  def count(n) when rem(n, 6) === 0 do
    IO.puts "Divisible by 6"
    count(n - 1)
  end
  def count(n) when is_integer(n) do
    IO.puts n
    count(n - 1)
  end
  def count(str) when is_binary(str), do: IO.puts "Not a number"
end

Recursion.count(20)
