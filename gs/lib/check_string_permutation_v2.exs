defmodule CheckStringPermutation do
  use ExUnit.Case, async: true
  ExUnit.start()
  doctest CheckStringPermutation

  @moduledoc """
  Chapter 1
  Page 90

  1.2 Given two strings, write a method to decide if one is
  a permutation of the other.
  """

  def start(str1, str2) do
    case String.length(str1) == String.length(str2) do
      true  -> true
      false -> IO.inspect("#{str1} is not a permutation of #{str2}")
    end
  end
end

CheckStringPermutation.start("a", "a") # true
CheckStringPermutation.start("b", "a") # false
CheckStringPermutation.start("ab", "a") # false
CheckStringPermutation.start("abc", "cab") # true
CheckStringPermutation.start("qw;fypqwosiretnaorsitenq;wfyuplqwofiaesrtnaosrietnqw;fyupl", "lpuyf;wqnteirsoantrseaifowqlpuyfw;qnetisroanterisowqpyf;wq") # true
