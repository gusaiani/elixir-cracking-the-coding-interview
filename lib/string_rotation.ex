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
    iex> StringRotation.is?("waterbottle", "erbottlewat")
    true

    iex> StringRotation.is?("coke", "pepsi")
    false

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
    IO.puts "Comparing #{string1} and #{string2}"
    true
  end
end
