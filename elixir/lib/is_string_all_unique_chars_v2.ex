defmodule IsStringAllUniqueCharsV2 do
  @moduledoc """
  Chapter 1
  Page 90

  1.1 Is Unique:
  Implement an algorithm to determine if a string has all unique characters.
  What if you cannot use additional data structures?
  """

  @doc """
  Check string for uniqueness of all characters.

      iex> IsStringAllUniqueCharsV2.start("")
      true

      iex> IsStringAllUniqueCharsV2.start("abc")
      true

      iex> IsStringAllUniqueCharsV2.start("abca")
      false

      iex> IsStringAllUniqueCharsV2.start("qwfpgjluy;arstdhneiozxcvbkm,.")
      true

      iex> IsStringAllUniqueCharsV2.start("qwfpgjluy;arstdhneizxcvbkm,./q")
      false

  """
  def start(""), do: true
  def start(str), do: !has_duplicate?(str)

  def has_duplicate?(str) do
    str
    |> String.codepoints
    |> Enum.sort
    |> found_duplicate?
  end

  def found_duplicate?([]), do: false
  def found_duplicate?([a | [ a | _]]), do: true
  def found_duplicate?([_ | tail]) do
    found_duplicate?(tail)
  end
end

