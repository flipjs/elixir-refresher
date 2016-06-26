defmodule MyUtils.Parallel do
  @moduledoc """
  Execute code in a new process.
  """

  def pmap(collection, fun) do
    collection
    |> Enum.map(&spawn_process(&1, self, fun))
    |> Enum.map(&await/1)
  end

  defp spawn_process(item, parent, fun) do
    spawn_link fn ->
      send parent, {self, fun.(item)}
    end
  end

  defp await(pid) do
    receive do
      {^pid, item} -> item
    end
  end

  def greet(msg) do
    msg
    |> spawn_greeter(self)
    |> say
  end

  defp spawn_greeter(msg, parent) do
    spawn_link fn ->
      send parent, {self, msg}
    end
  end

  defp say(pid) do
    receive do
      {^pid, msg} -> IO.puts msg
    end
  end
end

