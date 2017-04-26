defmodule IsStringAllUniqueCharsV1 do
  @moduledoc """
  Chapter 1
  Page 90

  1.1 Is Unique:
  Implement an algorithm to determine if a string has all unique characters.
  What if you cannot use additional data structures?
  """

  @doc """
  Check string for uniqueness of all characters.

      iex> IsStringAllUniqueCharsV1.start("")
      true

      iex> IsStringAllUniqueCharsV1.start("abc")
      true

      iex> IsStringAllUniqueCharsV1.start("abca")
      false

      iex> IsStringAllUniqueCharsV1.start("qwfpgjluy;arstdhneiozxcvbkm,.")
      true

      iex> IsStringAllUniqueCharsV1.start("qwfpgjluy;arstdhneizxcvbkm,./q")
      false

  """
  def start(""), do: true
  def start(str) do
    case has_duplicate?(str) do
      false -> true
      _     -> false
    end
  end

  def has_duplicate?(str) do
    str
    |> String.codepoints
    |> found_duplicate?
  end

  def found_duplicate?([]), do: false
  def found_duplicate?([char | tail]) do
    case find_duplicate(char, tail) do
      false -> found_duplicate?(tail)
      _ -> true
    end
  end

  def find_duplicate(_, []), do: false
  def find_duplicate(char, [char | _   ]), do: true
  def find_duplicate(char, [_    | tail]), do: find_duplicate(char, tail)

end

