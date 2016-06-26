defmodule Cipher.Protect do
  @moduledoc """
  Cipher.Protect module.
  """

  @doc ~S"""
   Reverses the text.

  ## Examples

    iex> world = Cipher.Protect.rev("world")
    "dlrow"
  """
  def rev(text) do
    String.reverse(text)
  end
end
