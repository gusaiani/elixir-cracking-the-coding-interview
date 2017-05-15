defmodule ZeroMatrix do
  @moduledoc """
  Chapter 1
  Page 91

  1.8 Write an algorithm such that if an element in an M x N matrix
  is zero, its entire row and column are set to 0.
  """

  @doc """
  Detect zero in matrix and set its column and row entries all as zero.

  ## Examples

      iex> ZeroMatrix.start(['a'])
      ['a']

      iex> ZeroMatrix.start(%{:row_length => 4, :column_height => 4, :items => ['a', 'b', 'c', 'd', 'e',  0,  'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p']})
      ['a', 0, 'c', 'd', 0, 0, 0, 0, 'i', 0, 'k', 'l', 'm', 0, 'o', 'p']
  """
  def start(matrix) do
    ['0']
  end
end
