defmodule PalindromePermutation do
  @moduledoc """
  * Chapter 1
  * Page 90
  *
  *   1.3 Palindrome Permutation
  *   Given a string, write a function to check if it is
  *   a permutation of a palindrome.
  """

  @doc """
  Checks string for palindrome permutation.

      iex>PalindromePermutation.is?("Tact Coa")
      true

      iex>PalindromePermutation.is?("abc")
      false

      iex>PalindromePermutation.is?("ab, ab")
      true
  """

  def is?(string) do
    string
    |> String.graphemes
    |> convert_to_map
    |> Map.values
    |> sum_over_1?
  end

  def convert_to_map(list) do
    Enum.reduce(list, %{}, fn(char, map) ->
      char = String.downcase(char)

      case (char != String.upcase(char)) do
        true -> Map.update(map, char, 1, fn _ -> 0 end)
        _    -> map
      end
    end)
  end

  def sum_over_1?(list, acc \\ 0)
  def sum_over_1?(_, acc) when acc > 1, do: false
  def sum_over_1?([], _), do: true
  def sum_over_1?([h | tail], acc) do
    sum_over_1?(tail, acc + h)
  end
end
