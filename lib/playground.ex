defmodule Playground do
  @moduledoc """
    Playground snippets
  """

  @doc """
    Causes an exception to be thrown.

  ## Examples

      iex> Playground.choke [1, 2]
      ** (ArgumentError) I don't like lists!

      iex> Playground.choke :ok
      ** (ArgumentError) I don't like anything at all!

  """
  def choke([_, _]) do
    raise ArgumentError, message: "I don't like lists!"
  end

  def choke(_) do
    raise ArgumentError, message: "I don't like anything at all!"
  end
end
