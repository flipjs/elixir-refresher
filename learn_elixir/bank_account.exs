defmodule BankAccount do
  defstruct balance: 0

  def new(balance) do
    %__MODULE__{balance: balance}
  end

  def deposit(account, amount) do
    %{account | balance: account.balance + amount}
  end

  def withdraw(account, amount) do
    %{account | balance: account.balance - amount}
  end

  def balance(account) do
    account.balance
  end
end
