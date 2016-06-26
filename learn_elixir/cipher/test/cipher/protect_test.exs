defmodule Cipher.ProtectTest do
  use ExUnit.Case
  doctest Cipher.Protect

  setup do
    {:ok, word: "olleh"}
  end

  test "rev is working", %{word: olleh} do
    assert Cipher.Protect.rev("hello") == olleh
  end
end
