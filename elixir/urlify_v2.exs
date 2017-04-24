defmodule Urlify do
  @moduledoc """
  Chapter 1
  Page 90

  Write a method to replace all spaces in a string with %20.
  """

  def start(str) do
    str
    |> String.graphemes
    |> remove_leading_spaces
    |> Enum.reverse
    |> remove_leading_spaces
    |> replace(" ", "%20")
    |> Enum.join
  end

  def remove_leading_spaces([" " | tail]) do
    remove_leading_spaces(tail)
  end

  def remove_leading_spaces(array), do: array

  def replace(array, from, to, acc \\ [])
  def replace([], _, _, acc), do: acc
  def replace([from | tail], from, to, acc) do
    replace(tail, from, to, [to | acc])
  end
  def replace([head | tail], from, to, acc) do
    replace(tail, from, to, [head | acc])
  end
end

IO.inspect(Urlify.start("")) # ""
IO.inspect(Urlify.start("baby")) # "baby"
IO.inspect(Urlify.start("   Mr John Smith            ")) # "Mr%20John%20Smith"
