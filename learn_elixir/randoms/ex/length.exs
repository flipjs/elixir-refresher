defmodule MyList do
  def length(list), do: length(list, 0)
  def length([], acc), do: acc
  def length([_head | tail], acc), do: length(tail, acc + 1)

  def each([], _func) do
    :ok
  end
  def each([h|t], func) do
    func.(h)
    each(t, func)
  end

  def map(list, func) do
    do_map(list, func, [])
  end

  defp do_map([], _func, acc) do
    :lists.reverse(acc)
  end
  defp do_map([h|t], func, acc) do
    result = func.(h)
    acc = [result | acc]
    do_map(t, func, acc)
  end
end

list = [1,2,3,4]

list
|> MyList.length
|> IO.puts

# MyList.each list, fn(item) ->
#   IO.puts(item)
# end

# Using capture operator
MyList.each(list, &IO.puts/1)
MyList.map(list, &IO.puts(&1 * 1000))

