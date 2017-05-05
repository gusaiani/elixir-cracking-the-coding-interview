defmodule RotateMatrix do
  @moduledoc """
  Chapter 1
  Page 91

  1.7 Given an image represented by an NxN matrix,
  where each pixel in the image is 4 bytes,
  write a method to rotate the image by 90 degrees.
  Can you do this in place?
  """

  @doc """
  Rotate any square matrix 90° clockwise.

  ## Examples

      iex> RotateMatrix.start(['a'])
      ['a']

      iex> four_tile_square = [
      ...>  'a', 'b', 'c', 'd',
      ...>  'e', 'f', 'g', 'h',
      ...>  'i', 'j', 'k', 'l',
      ...>  'm', 'n', 'o', 'p'
      ...> ]
      ...> rotated_four_tile_square = [
      ...>  'm', 'i', 'e', 'a',
      ...>  'n', 'j', 'f', 'b',
      ...>  'o', 'k', 'g', 'c',
      ...>  'p', 'l', 'h', 'd'
      ...> ]
      ...> RotateMatrix.start(four_tile_square) == rotated_four_tile_square
      true

  """
  def start(list) when is_list(list) do
    row_length = integer_sqrt(list)
  end

  def integer_sqrt(list), do: list |> length |> :math.sqrt |> trunc

end
