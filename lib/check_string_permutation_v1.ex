defmodule CheckStringPermutationV1 do
  @moduledoc """
  Chapter 1
  Page 90

  1.2 Given two strings, write a method to decide if one is
  a permutation of the other.
  """
  @doc """
  Compare the two strings.

  ## Examples

      iex> CheckStringPermutationV1.start("a", "a")
      true

      iex> CheckStringPermutationV1.start("b", "a")
      false

      iex> CheckStringPermutationV1.start("ab", "a")
      false

      iex> CheckStringPermutationV1.start("abc", "cab")
      true

      iex> CheckStringPermutationV1.start("qw;fypqwosiretnaorsitenq;wfyuplqwofiaesrtnaosrietnqw;fyupl","lpuyf;wqnteirsoantrseaifowqlpuyfw;qnetisroanterisowqpyf;wq")
      true

  """
  def start(str1, str2) do
    sort(str1) === sort(str2)
  end

  defp sort(str) do
    str
    |> String.codepoints
    |> Enum.sort
  end
end
