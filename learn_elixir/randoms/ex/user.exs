defmodule User do
  @moduledoc """
  Defines the user struct and functions to handle users.
  """

  import String, only: [split: 1]
  import List, only: [first: 1, last: 1]

  defstruct name: nil, email: nil

  @doc """
  Get the first name of a user.

  ## Parameters

  - `user` - A user struct.

  ## Examples

      user = %User{name: "Felipe Apostol"}
      User.first_name(user)
      "Felipe"
  """
  def first_name(%User{} = user) do
    user
    |> split_name
    |> first
  end

  @doc """
  Get the last name of a user.

  ## Parameters

  - `user` - A user struct.

  ## Examples

      user = %User{name: "Felipe Apostol"}
      User.last_name(user)
      "Apostol"
  """
  def last_name(user) do
    user
    |> split_name
    |> last
  end

  def email(user) do
    user.email
  end

  defp split_name(user) do
    split(user.name)
  end
end

