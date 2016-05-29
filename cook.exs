defmodule Cook do
  def cook(meat, veg) do
    _cook("Fry", meat) <> ", " <> _cook("Boil", veg)
  end
  defp _cook(cook, food), do: "#{cook} #{food}"
end

IO.inspect Cook.cook("pasta", "brocolli")

