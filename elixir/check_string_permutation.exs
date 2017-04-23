defmodule CheckStringPermutation do
  @moduledoc """
  Chapter 1
  Page 90

  1.2 Given two strings, write a method to decide if one is
  a permutation of the other.
  """

  def start(str1, str2) do
    IO.inspect(sort(str1) === sort(str2))
  end

  def sort(str) do
    str
    |> String.codepoints
    |> Enum.sort
  end
end

CheckStringPermutation.start("a", "a") # true
CheckStringPermutation.start("b", "a") # false
CheckStringPermutation.start("ab", "a") # false
CheckStringPermutation.start("abc", "cab") # true
CheckStringPermutation.start("qw;fypqwosiretnaorsitenq;wfyuplqwofiaesrtnaosrietnqw;fyupl", "lpuyf;wqnteirsoantrseaifowqlpuyfw;qnetisroanterisowqpyf;wq") # true
