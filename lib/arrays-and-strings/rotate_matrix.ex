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

      iex> RotateMatrix.start(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p'])
      ['m', 'i', 'e', 'a', 'n', 'j', 'f', 'b', 'o', 'k', 'g', 'c', 'p', 'l', 'h', 'd']
  """
  def start(list) when is_list(list) do
    list_length = length(list)
    row_length = integer_sqrt(list)
    blank_list = Enum.map(1..list_length, fn _ -> nil end)

    {_, rotated_list} =
      Enum.reduce(list, {0, blank_list}, fn(entry, {index, new_list}) ->
        x = rem(index, row_length)
        y = div(index, row_length)

        new_x = row_length - y - 1
        new_y = x

        new_position = (new_y * row_length) + new_x

        {index + 1, List.replace_at(new_list, new_position, entry)}
      end)

    rotated_list
  end

  def integer_sqrt(list), do: list |> length |> :math.sqrt |> trunc

end
