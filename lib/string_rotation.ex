defmodule StringRotation do
  @moduledoc """
  Chapter 1
  Page 91

  1.9 Assume you have a method isSubstring whick checks
  if one word is a substring of another.
  Given two strings, s1 and s2, write code to check
  if s2 is a rotation of s1 using only one call to isSubstring.
  (e.g., "watterbottle" is a rotation of "erbottlewat").
  """

  @doc """
  Check if strings are rotations of one another

  ## Examples
    iex> StringRotation.is?("coke", "pepsi")
    false

    iex> StringRotation.is?("waterbottle", "erbottlewat")
    true

    iex> StringRotation.is?("coke", "epsi")
    false

    iex> StringRotation.is?("coke", "ecok")
    true

    iex> StringRotation.is?("waterbottle", "erbotlewat")
    false

    iex> StringRotation.is?("watwater", "erwatwat")
    true
  """

  def is?(string1, string2) do
    case String.length(string1) == String.length(string2) do
      false -> false
      true -> compare(string1, string2)
    end
  end

  defp compare(string1, string2) do
    chars1 = String.graphemes(string1)
    chars2 = String.graphemes(string2)
    length = length(chars1)

    compare_chars(chars1, chars2, length)
  end

  defp compare_chars(chars1, chars2, length, rotations_performed \\ 1)

  defp compare_chars(array, array, _, _), do: true

  defp compare_chars(_, _, length, length), do: false

  defp compare_chars(array1, [a | tail2], length, rotations_performed) do
    # IO.puts ''
    # IO.inspect array1, label: "array1"
    # IO.inspect a, label: "a"
    # IO.inspect tail2, label: "tail2"
    # IO.inspect length, label: "length"
    # IO.inspect rotations_performed, label: "rotations_performed"

    rotated_array_2 = tail2 ++ [a]

    compare_chars(array1, rotated_array_2, length, rotations_performed + 1)
  end
end
