defmodule Playground.Rot13 do
  @moduledoc """
  [ROT13](https://en.wikipedia.org/wiki/ROT13) encoding/decoding of text
  """

  @typedoc """
  A block of text as a binary string or charlist
  """
  @type text :: String.t | charlist

  @doc """
  Encodes or decodes a block of text. If the text is a charlist,
  returns an encoded charlist; otherwise, if the text is a binary
  string, returns a binary string instead.

  ## Examples

    iex> Playground.Rot13.encode("abcd 1")
    "nopq 1"

    iex> Playground.Rot13.encode('abcd 1')
    'nopq 1'

    iex> Playground.Rot13.encode(
    ...> "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    ...> )
    "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm"

  """
  @spec encode(text) :: text
  def encode(text) when is_list(text) do: Enum.map(text, &_encode/1)

  def encode(text) when is_binary(text) do
    text
      |> to_charlist
      |> encode
      |> to_string
  end

  defp _encode(c) when c >= ?A and c <= ?Z, do: _rot13(c, ?A)
  defp _encode(c) when c >= ?a and c <= ?z, do: _rot13(c, ?a)
  defp _encode(c), do: c

  defp _rot13(c, base), do: base + rem(c - base + 13, 26)
end
