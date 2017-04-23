defmodule IsStringUnique do
  @moduledoc """
  Chapter 1
  Page 90

  1.1 Is Unique:
  Implement an algorithm to determine if a string has all unique characters.
  What if you cannot use additional data structures?
  """

  def start(""), do: IO.puts("String is empty.")
  def start(str) do
    case has_duplicate?(str) do
      false -> IO.inspect("String #{str} has all unique characters.")
      _     -> IO.inspect("String #{str} has duplicated characters")
    end
  end

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

IsStringUnique.start("")
IsStringUnique.start("abc")
IsStringUnique.start("abca")
IsStringUnique.start("qwfpgjluy;arstdhneiozxcvbkm,.")
IsStringUnique.start("qwfpgjluy;arstdhneizxcvbkm,./q")
