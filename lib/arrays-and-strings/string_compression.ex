defmodule StringCompression do
  @moduledoc """
  Chapter 1
  Page 90

  1.6 Implement a method to perform basic string compression
  using the counts of repeated characters.
  For example, the string aabcccccaaa would become a2blc5a3.
  If the "compressed" string would not become smaller than
  the original string, your method should return the
  original string.
  You can assume the string has only uppercase and lowercase
  letters (a - z).
  """

  @doc """
  Performs a rudimentary compression in alphabetical strings.

  ## Examples

      iex> StringCompression.start("")
      ""

      iex> StringCompression.start("abcd")
      "abcd"

      iex> StringCompression.start("aabcccccaaa")
      "a2b1c5a3"
  """
  def start(string) do
    string
    |> String.graphemes
    |> compress
    |> Enum.join("")
    |> shortest(string)
  end

  defp compress([]), do: []

  defp compress([a | tail]) do
    compress(tail, [], a, 1)
  end

  defp compress([], compressed, a, acc) do
    compressed ++ [a] ++ [acc]
  end

  defp compress([a | tail], compressed, a, acc) do
    compress(tail, compressed, a, acc + 1)
  end

  defp compress([a | tail], compressed, b, acc) do
    new_compressed = compressed ++ [b] ++ [acc]
    compress(tail, new_compressed, a, 1)
  end

  defp shortest(string1, string2) do
    if String.length(string1) < String.length(string2) do
      string1
    else
      string2
    end
  end
end
