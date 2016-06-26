defmodule MyUtils.ListTest do
  use ExUnit.Case
  doctest MyUtils.List

  test "length" do
    assert MyUtils.List.length([1,2,3]) == 3
  end
end
