defmodule CheckStringPermutationV2 do
  @moduledoc """
  Chapter 1
  Page 90

  1.2 Given two strings, write a method to decide if one is
  a permutation of the other.
  """

  @doc """
  Compare the two strings.

  ## Examples

      iex> CheckStringPermutationV2.start("a", "a")
      true

      iex> CheckStringPermutationV2.start("b", "a")
      false

      iex> CheckStringPermutationV2.start("ab", "a")
      false

      iex> CheckStringPermutationV2.start("abc", "cab")
      true

      iex> CheckStringPermutationV2.start("qw;fypqwosiretnaorsitenq;wfyuplqwofiaesrtnaosrietnqw;fyupl","lpuyf;wqnteirsoantrseaifowqlpuyfw;qnetisroanterisowqpyf;wq")
      true

  """
  def start(str1, str2) do
    case String.length(str1) == String.length(str2) do
      true  -> true
      false -> false
    end
  end
end
