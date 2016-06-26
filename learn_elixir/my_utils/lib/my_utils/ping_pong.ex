defmodule MyUtils.PingPong do
  def handle_message(:ping, server) do
    IO.puts :ping
    IO.inspect server
  end
  def handle_message(:pong, server) do
    IO.puts :pong
    IO.inspect server
  end
  def handle_message(_other, _server) do
    false
  end

  def send_message(server, msg) do
    send server, msg
  end

  def start do
    MyUtils.Server.start(__MODULE__)
  end
end
