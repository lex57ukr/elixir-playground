defmodule Playground.Json do
  @moduledoc """
  JSON snippets
  """

  @doc """
  JSON encodes any value. Returns a tuple containing :ok
  and the JSON string value.

  ## Examples

    iex> Playground.Json.encode %{:name => "Jack", :value => 1}
    {:ok, "{\\"value\\":1,\\"name\\":\\"Jack\\"}"}

  """
  def encode(val), do: Poison.encode(val)

  @doc """
  JSON encodes any value. Returns a JSON-encoded string.

  ## Examples

    iex> Playground.Json.encode! %{:name => "Jack", :value => 1}
    "{\\"value\\":1,\\"name\\":\\"Jack\\"}"

  """
  def encode!(val) do
    {:ok, json} = encode(val)
    json
  end
end
