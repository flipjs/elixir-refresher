defmodule MyUtils.Speaker do
  @moduledoc """
  Module for sending and receiving messages.
  """

  alias MyUtils.Server

  def handle_message({:say, msg}, _pid) do
    IO.puts msg
  end
  def handle_message(_other, _pid) do
    false
  end

  def send_message(server, msg) do
   send server, {:say, msg <> " yourself!"}
  end

  def start do
    Server.start(__MODULE__)
  end
end

