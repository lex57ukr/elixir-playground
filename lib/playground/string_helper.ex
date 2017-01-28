defmodule Playground.StringHelper do
  @moduledoc """
    String helper functions
  """

  @typedoc """
    A block of text as a binary string or charlist
  """
  @type text :: String.t | charlist

  @doc """
    Strips the margin from a block of text.

  ## Examples

      iex> Playground.StringHelper.strip_margin(
      ...> "Hello the
      ...> |   world!"
      ...> )
      "Hello the\\n   world!"

      iex> Playground.StringHelper.strip_margin(
      ...> 'Hello the
      ...> |   world!'
      ...> )
      'Hello the\\n   world!'

  """
  @spec strip_margin(text) :: text
  def strip_margin(text) when is_list(text) do
    text
    |> to_string
    |> strip_margin
    |> to_charlist
  end

  def strip_margin(text) when is_binary(text) do
    Regex.replace(~r/([\r\n]+)\s*\|/, text, "\\1")
  end
end
