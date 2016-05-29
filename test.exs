defmodule Greeting do
  def hello (str) do
    str
  end
end

Greeting.hello("world") |> IO.puts

defp parse_live_query_content(
  <<
    op_type,
    token :: int,
    record_type,
    version :: int,
    cluster_id :: short,
    position :: long,
    rest :: binary
  >>,
  schema
) do
