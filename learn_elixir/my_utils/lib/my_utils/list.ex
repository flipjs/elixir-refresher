defmodule MyUtils.List do
  @moduledoc """
  List utility functions.
  """

  @doc """
  Returns the length of list.

  ## Examples

    iex> MyUtils.List.length([1,2,3])
    3
  """
  def length(list), do: do_length(list, 0)

  defp do_length([], acc), do: acc
  defp do_length([_head | tail], acc), do: do_length(tail, acc + 1)

  @doc ~S"""
  Loops the list.

  ## Examples

    iex> MyUtils.List.each([1,2,3], fn(item) -> item end)
    :ok
  """
  def each(list, fun) do
    do_each(list, fun)
  end

  defp do_each([], _func) do
    :ok
  end
  defp do_each([h|t], func) do
    func.(h)
    do_each(t, func)
  end

  @doc ~S"""
  Returns a new list.

  ## Examples

    iex> MyUtils.List.map([1,2,3], &(&1 * 2))
    [2, 4, 6]
  """
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

