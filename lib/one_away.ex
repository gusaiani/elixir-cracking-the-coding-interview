defmodule OneAway do
  @moduledoc """
  Chapter 1
  Page 90

  1.3 There are three types of edits that can be performed on strings:
  insert a character, remove a character, or replace a character.
  Given two strings, write a function to check if they are one edit (or zero edits) away.
  """

  @doc """
  Check if strings are one edit away from each other.

  ## Examples

      iex> OneAway.is?("pale", "ple")
      true

      iex> OneAway.is?("ple", "pale")
      true

      iex> OneAway.is?("pales", "pale")
      true

      iex> OneAway.is?("pale", "pales")
      true

      iex> OneAway.is?("pale", "palesssss")
      false

      iex> OneAway.is?("pale", "bale")
      true

      iex> OneAway.is?("pale", "bake")
      false

  """

  def is?(string1, string2)
      when is_binary string1 and is_binary string2 do
    list1 = String.graphemes(string1)
    list2 = String.graphemes(string2)

    is?(list1, list2, 0)
  end

  def is?(_, _, 2), do: false
  def is?([], [], acc) when acc <= 1, do: true
  def is?([], [_ | tail], acc) do
    is?([], tail, acc + 1)
  end
  def is?([_ | tail], [], acc) do
    is?(tail, [], acc + 1)
  end
  def is?([a | tail1], [a | tail2], acc) do
    is?(tail1, tail2, acc)
  end
  def is?([_ | [b | tail1]], [b | tail2], acc) do
    is?(tail1, tail2, acc + 1)
  end
  def is?([b | tail1], [_ | [b | tail2]], acc) do
    is?(tail1, tail2, acc + 1)
  end
  def is?([_ | [a | tail1]], [_ | [a | tail2]], acc) do
    is?(tail1, tail2, acc + 1)
  end
end
