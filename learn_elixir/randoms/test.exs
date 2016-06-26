defmodule BankAccount do
  # Define default implementations for the 6 GenServer
  # callbacks with `use GenServer`
  use GenServer

  # Wrap calls to GenServer in public functions
  def start(balance) do
    {:ok, account} = GenServer.start(__MODULE__, balance)
    account
  end

  def deposit(account, amount) do
    GenServer.cast(account, {:deposit, amount})
  end

  def withdraw(account, amount) do
    GenServer.cast(account, {:withdraw, amount})
  end

  def balance(account) do
    GenServer.call(account, :balance)
  end

  ###
  # GenServer API
  ###

  # Handle cast messages with `handle_cast`. No response is expected,
  # so reply with the {:noreply, ...} tuple format
  def handle_cast({:deposit, amount}, balance) do
    {:noreply, balance + amount}
  end

  def handle_cast({:withdraw, amount}, balance) do
    {:noreply, balance - amount}
  end

  # Handle call messages with the `handle_call` callback. Responses are usually
  # expected, so respond with the {:reply, ...} tuple format.
  def handle_call(:balance, _from, balance) do
    {:reply, balance, balance}
  end
end
