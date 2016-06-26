defmodule Crypto.Encryptor do
  def encrypt(word) do
    word
    |> String.reverse
  end
end
