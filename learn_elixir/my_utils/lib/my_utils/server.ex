defmodule MyUtils.Server do
  @moduledoc """
  GenServer utility.
  """

  def start(cb) do
    parent = self
    IO.inspect parent
    spawn fn ->
      loop(cb, parent)
    end
  end

  defp loop(cb, parent) do
    receive do
      msg -> cb.handle_message(msg, parent)
    end
    loop(cb, parent)
  end
end

