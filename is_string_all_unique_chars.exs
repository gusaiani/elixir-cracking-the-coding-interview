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
    has_duplicate? =
      str
      |> String.codepoints
      |> found_duplicate?

    case has_duplicate? do
      false -> IO.inspect("String #{str} has all unique characters.")
      _     -> IO.inspect("String #{str} has duplicated characters")
    end
  end

  def found_duplicate?([]), do: false
  def found_duplicate?([char | tail]) do
    case find_duplicate(char, tail) do
      false -> found_duplicate?(tail)
      _ -> true
    end
  end

  def find_duplicate(_, []), do: false
  def find_duplicate(char, [head | _   ]) when char == head, do: true
  def find_duplicate(char, [_    | tail]), do: find_duplicate(char, tail)

end

IsStringUnique.start("")
IsStringUnique.start("abc")
IsStringUnique.start("abca")
IsStringUnique.start("abcaqwfp;yuasrtoiewqf;pyuqlwf;yupasroitenaqwf;pyursaqfwpsrta")
