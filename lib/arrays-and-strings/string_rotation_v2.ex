defmodule StringRotationV2 do
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
    iex> StringRotationV2.is?("coke", "pepsi")
    false

    iex> StringRotationV2.is?("waterbottle", "erbottlewat")
    true

    iex> StringRotationV2.is?("coke", "epsi")
    false

    iex> StringRotationV2.is?("coke", "ecok")
    true

    iex> StringRotationV2.is?("waterbottle", "erbotlewat")
    false

    iex> StringRotationV2.is?("watwater", "erwatwat")
    true
  """

  def is?(string1, string2) do
    cond do
      String.length(string1) != String.length(string2) ->
        false
      String.length(string1) == 0 ->
        false
      true ->
        long_string1 = string1 <> string1
        long_string1 =~ string2
    end
  end
end
