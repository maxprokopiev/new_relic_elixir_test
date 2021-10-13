defmodule TestApp do
  @moduledoc """
  Documentation for TestApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TestApp.hello()
      :world

  """
  def hello do
    IO.puts("======")
    NewRelic.start_transaction("Test", "Name")
    IO.puts("world")
    :world
    NewRelic.stop_transaction()
    IO.puts("======")
  end
end
